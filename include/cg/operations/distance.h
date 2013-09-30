#pragma once

#include <cg/primitives/point.h>
#include <cg/primitives/segment.h>
#include <cmath>

namespace cg {


//    inline double distance(point_2 const & p, segment_2 const & seg)
//    {
//        double len = distance(seg[0], seg[1]);
//        double projection = (seg[1].x - seg[0].x) * (p.x - seg[0].x) + (seg[1].y - seg[0].y) * (p.y - seg[0].y);
//        if (projection < 0) return distance(p, seg[0]);
//        else if (projection > len) return distance(p, seg[1]);
//        else
//        {
//            double res = std::abs((seg[1].x - seg[0].x) * (p.y - seg[0].y) - (p.x - seg[0].x) * (seg[1].y - seg[0].y));
//            res /= len;
//            return res;
//        }
//    }

    double distance_point_to_point(point_2  const & a, point_2 const & b)
    {
       return std::sqrt(std::pow(std::abs(a.x - b.x),2) + std::pow(std::abs(a.y - b.y), 2));
    }

    double distance_point_to_line(point_2 const & p, segment_2 const & line)
    {
       double r1 = distance_point_to_point(line[0], p);
       double r2 = distance_point_to_point(p, line[1]);
       double r12 = distance_point_to_point(line[0], line[1]);

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
             return std::abs((line[1].x - line[0].x) * (p.y - line[0].y) - (p.x - line[0].x) * (line[1].y - line[0].y)) / r12;
          }
       }
    }
}
