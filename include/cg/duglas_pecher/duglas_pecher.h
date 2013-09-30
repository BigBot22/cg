#pragma once

#include <cg/primitives/point.h>
#include <cg/operations/distance.h>

using cg::point_2;

namespace cg
{


   template<class BidIter, class OutIter>
   void make_simple(BidIter vec_it_b, BidIter vec_it_e, double eps, OutIter res)
   {
      if(vec_it_b == vec_it_e) return;
      if(vec_it_b + 1 == vec_it_e)
      {
         *res++ = *vec_it_b;
         return;
      }
      if(vec_it_b + 2 == vec_it_e)
      {
         *res++ = *vec_it_b;
         *res++ = *(vec_it_b + 1);
         return;
      }

      *res++ = *vec_it_b;
      duglas_pecher(vec_it_b, vec_it_e - 1, eps,res);
      *res++ = *(vec_it_e - 1);
   }

   template<class BidIter, class OutIter>
   void duglas_pecher(BidIter vec_it_b, BidIter vec_it_e, double eps, OutIter res)
   {
      //std::cout << "Duglas_Pecher" << std::endl;

      if(vec_it_b == vec_it_e) return;
      if(vec_it_b + 1 == vec_it_e) return;
      //if(vec_it_b + 2 == vec_it_e) return;


      double max_dist = 0;
      BidIter max_dist_it;
      for(BidIter it = (vec_it_b + 1); it != vec_it_e; it++)
      {
         //std::cout << "Duglas_Pecher2 []: " << it->x << " " << it->y << std::endl;
         double cur_dist = distance_point_to_line(*it, cg::segment_2(*vec_it_b, *vec_it_e));
         if(max_dist < cur_dist)
         {
            //std::cout << "Duglas_Pecher2.1 finde new max_dist=" << cur_dist << std::endl;
            max_dist = cur_dist;
            max_dist_it = it;
         }
      }

      //std::cout << "Duglas_Pecher3 max_dist=" << max_dist << std::endl;

      if(max_dist < eps)
      {
         //std::cout << "Duglas_Pecher4" << std::endl;

         return;
      }
      else
      {

         //std::cout << "Duglas_Pecher LEFT" << std::endl;
         duglas_pecher(vec_it_b, max_dist_it, eps, res);
         *res++ = *max_dist_it;
         //std::cout << "Duglas_Pecher RIGHT" << std::endl;
         duglas_pecher(max_dist_it, vec_it_e, eps, res);
      }
      return ;
   }
}
