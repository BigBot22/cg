#pragma once

#include <cg/operations/orientation.h>
#include <vector>
#include <iostream>
#include <algorithm>
#include <iterator>
#include <cg/primitives/segment.h>
#include <cg/primitives/point.h>
#include <cg/primitives/contour.h>
#include <cg/operations/orientation.h>
#include <cg/operations/contains/segment_point.h>

namespace cg
{

   template <class Scalar>
   contour_2t<Scalar> get_minkovsky_sum(contour_2t<Scalar> const & obst, contour_2t<Scalar> const & robot) {

      std::vector<point_2t<Scalar>> ans;

      auto obst_it = std::min_element(obst.begin(), obst.end());
      auto robot_it = std::min_element(robot.begin(), robot.end());

      for (int i = 0; i < obst.size(); ++i) {


         auto obst_it_next = obst.begin();
         if (obst_it == (obst.end() - 1)) {
            obst_it_next = obst.begin();
         } else {
            obst_it_next = obst_it + 1;
         }

         for (int i = 0; i < obst.size() + robot.size(); ++i) {

            auto robot_it_next = robot.begin();
            if (robot_it == (robot.end() - 1)) {
               robot_it_next = robot.begin();

            } else {
               robot_it_next = robot_it + 1;
            }


            vector_2t<Scalar> delta(robot_it_next->x - robot_it->x, robot_it_next->y - robot_it->y);

            point_2t<Scalar> new_obst_point(obst_it_next->x + delta.x, obst_it_next->y + delta.y);


            point_2t<Scalar> point(obst_it->x + robot_it->x, obst_it->y + robot_it->y);

            if (ans.size() > 1 ) {
               if ( cg::contains({ans[ans.size() - 1], ans[ans.size() - 2]}, point)) {
                  ans.pop_back();
                  //ans.emplace_back(point);
                  ans.push_back(point);
               } else {

                  ans.push_back(point);
               }
            } else {
               ans.push_back(point);
            }



            if (orientation(*obst_it, *obst_it_next, new_obst_point) == CG_LEFT) {
               break;
            } else {
               robot_it = robot_it_next;
            }
         }
         obst_it = obst_it_next;
      }

      return ans;
   }

}
