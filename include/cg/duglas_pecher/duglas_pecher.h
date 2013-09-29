#pragma once

#include <cg/primitives/point.h>

using cg::point_2;

namespace cg
{
   float_t distance_point_to_point(point_2 a, point_2 b)
   {
      return std::sqrt(std::pow(std::abs(a.x - b.x),2) + std::pow(std::abs(a.y - b.y), 2));
   }

   float_t distance_point_to_line(point_2 p, point_2 line_b, point_2 line_e)
   {
      float_t r1 = distance_point_to_point(line_b, p);
      float_t r2 = distance_point_to_point(p, line_e);
      float_t r12 = distance_point_to_point(line_b, line_e);

      if(r1 >= std::sqrt(std::pow(r2, 2) + std::pow(r12, 2)))
      {
         //std::cout << "r2" << std::endl;
         return r2;
      }
      else
      {
         if(r2 >= std::sqrt(std::pow(r1, 2) + std::pow(r12, 2)))
         {
             //std::cout << "r1" << std::endl;
            return r1;
         }
         else
         {
            point_2 rp12(line_e.x - line_b.x, line_e.y - line_b.y);
            point_2 rp1(line_b.x - p.x, line_b.y - p.y);
            point_2 tmp(rp12.x * rp1.x, rp12.y * rp1.y);

            //size_t res = distance_point_to_point(tmp.x, tmp.y) / distance_point_to_point(rp12.x, rp12.y);

             //std::cout << "not r2 ^ r1" << std::endl;
            return std::abs((line_e.x - line_b.x) * (p.y - line_b.y) - (p.x - line_b.x) * (line_e.y - line_b.y)) / r12;
         }
      }
   }

   template<class BidIter, class OutIter>
   void make_simple(BidIter vec_it_b, BidIter vec_it_e, float_t eps, OutIter res)
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
   void duglas_pecher(BidIter vec_it_b, BidIter vec_it_e, float_t eps, OutIter res)
   {
      //std::cout << "Duglas_Pecher" << std::endl;

      if(vec_it_b == vec_it_e) return;
      if(vec_it_b + 1 == vec_it_e) return;
      //if(vec_it_b + 2 == vec_it_e) return;


      float_t max_dist = 0;
      BidIter max_dist_it;
      for(BidIter it = (vec_it_b + 1); it != vec_it_e; it++)
      {
         //std::cout << "Duglas_Pecher2 []: " << it->x << " " << it->y << std::endl;
         float_t cur_dist = distance_point_to_line(*it, *vec_it_b, *vec_it_e);
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
