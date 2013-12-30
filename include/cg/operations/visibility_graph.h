#pragma once

#include <cg/primitives/point.h>
#include <cg/primitives/contour.h>
#include <cg/primitives/segment.h>
#include <cg/operations/has_intersection/segment_segment.h>


namespace cg
{
   template<class Scalar>
   bool no_intersect(const segment_2t<Scalar> &seg1, const std::vector<contour_2t<Scalar>> &obst) {
      for (contour_2t<Scalar> cont : obst) {

         for (int i = 0; i < cont.size(); ++i) {

            point_2 a = cont[i];
            int j = i < (cont.size() - 1) ? i + 1 : 0;
            point_2 b = cont[j];
            segment_2t<Scalar> seg2(a, b);

            if((seg1[0] != seg2[0] && seg1[0] != seg2[1] && seg1[1] != seg2[0] && seg1[1] != seg2[1] ) && cg::has_intersection(seg1, seg2)) {

               //printf("FALSE\n");
               return false;
            }
         }
      }

      //printf("TRUE\n");
      return true;
   }

   bool is_tangent(cg::segment_2 seg, point_2 c) {
      return (cg::orientation(seg[0], seg[1], c) == cg::CG_RIGHT) ? true : false;
   }

   template <class Scalar, class OutIter>
   void hendle_start_end(const point_2t<Scalar> start, const point_2t<Scalar> p, const point_2t<Scalar> p_prev, const point_2t<Scalar> p_next, const std::vector<cg::contour_2t<Scalar>> obst, OutIter out) {

      if(no_intersect(segment_2t<Scalar>(start, p), obst) == true) {
         if ( ((cg::orientation(p_prev, p, start) == cg::CG_LEFT) || (cg::orientation(p_next, p, start) == cg::CG_RIGHT)) ) {
            *(out++) = segment_2t<Scalar>(start, p);
         }
      }
   }

   template<class Scalar>
   bool is_inside(point_2t<Scalar> a, point_2t<Scalar> b, contour_2t<Scalar> cont) {

      size_t f_ind;
      size_t s_ind;

      for (size_t i = 0; i < cont.size(); ++i ) {
         if (cont[i] == a) {
            f_ind = i;
         }
      }

      for (size_t i = 0; i < cont.size(); ++i ) {
         if (cont[i] == b) {
            s_ind = i;
         }
      }

      if (s_ind < f_ind ) {
         std::swap(f_ind, s_ind);
      }


      if ((cg::orientation(cont[f_ind], cont[f_ind < cont.size() - 1 ? f_ind + 1 : 0 ], cont[s_ind]) == CG_RIGHT)
          && (cg::orientation(cont[s_ind > 0 ? s_ind - 1 : cont.size() - 1], cont[s_ind], cont[f_ind]) == CG_RIGHT)) {
         return false;
      } else {
         return true;
      }
   }

   template<class Scalar, class OutIter>
   void visibility_graph(const std::vector<contour_2t<Scalar>>  obst, const point_2t<Scalar> & start, const point_2t<Scalar> & end, OutIter out) {

      if (no_intersect(segment_2t<Scalar>(start, end), obst)) {
         *(out++) = segment_2t<Scalar>(start, end);
      }

      for (contour_2t<Scalar> cont1 : obst) {
         for (size_t i = 0; i < cont1.size(); ++i) {
            point_2t<Scalar> a = cont1[i];

            for (contour_2t<Scalar> cont2 : obst) {

               //if ( cont1 == cont2) continue;

               for (size_t j = 0; j < cont2.size(); ++j) {
                  point_2t<Scalar> b = cont2[j];

                  int i_next = i < (cont1.size() - 1) ? i + 1 : 0;
                  int i_prev = i > 0 ? i - 1 : cont1.size() - 1;
                  point_2t<Scalar> a_next = cont1[i_next];
                  point_2t<Scalar> a_prev = cont1[i_prev];

                  int j_next = j < (cont2.size() - 1) ? j + 1 : 0;
                  int j_prev = j > 0 ? j - 1 : cont2.size() - 1;
                  point_2t<Scalar> b_next = cont2[j_next];
                  point_2t<Scalar> b_prev = cont2[j_prev];

                  // Start - a
                  hendle_start_end(start, a, a_prev, a_next, obst, out);
                  hendle_start_end(end, a, a_prev, a_next, obst, out);

                  if (a == b) continue;

                  hendle_start_end(start, b, b_prev, b_next, obst, out);
                  hendle_start_end(end, b, b_prev, b_next, obst, out);

                  if(no_intersect(segment_2t<Scalar>(a, b), obst) == true) {


                     if ( ((cg::orientation(a_prev, a, b) != cg::CG_RIGHT) || (cg::orientation(a_next, a, b) != cg::CG_LEFT)) ) {
                        if ( ((cg::orientation(b_prev, b, a) != cg::CG_RIGHT) || (cg::orientation(b_next, b, a) != cg::CG_LEFT)) ) {
                           if (cont1 == cont2) {
                              if (!is_inside(a, b, cont1) && (a_next != b && a_prev != b)) {
                                 *(out++) = segment_2t<Scalar>(a, b);
                              }
                           } else {
                              *(out++) = segment_2t<Scalar>(a, b);
                           }
                        }
                     }

                  }



               }
            }
         }
      }


   }




}
