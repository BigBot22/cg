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

#include <iostream>

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



            point_2t<Scalar> point(obst_it->x + robot_it->x, obst_it->y + robot_it->y);

            if (ans.size() > 1 ) {
               if (orientation(ans[ans.size() - 1], ans[ans.size() - 2], point) == CG_COLLINEAR) {
                  ans.pop_back();
                  ans.push_back(point);
               } else {
                  ans.push_back(point);
               }
            } else {
               ans.push_back(point);
            }

            printf(" %.2f %.2f\n", ans.back().x, ans.back().y);

            Scalar delta_x = robot_it_next->x - robot_it->x;
            Scalar delta_y = robot_it_next->y - robot_it->y;

            point_2t<Scalar> new_obst_point(obst_it_next->x + delta_x, obst_it_next->y + delta_y);

            if (orientation(*obst_it, *obst_it_next, new_obst_point) == CG_LEFT) {
               break;
            } else {
               robot_it = robot_it_next;
            }

         }
         obst_it = obst_it_next;
      }

      if (ans.size() > 1 && cg::contains(segment_2t<Scalar>(ans[ans.size() - 2], ans[0]), ans[ans.size() - 1])) {
         ans.pop_back();
      }

      return ans;
   }

}
