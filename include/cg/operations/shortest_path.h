#pragma once


#include <cg/common/common.h>
#include <cg/primitives/point.h>
#include <cg/primitives/segment.h>
#include <cg/operations/visibility_graph2.h>
#include <cg/operations/distance.h>
#include <map>

using namespace std;
namespace cg
{
   template<class Scalar, class OutIter>
   void shortest_path(const point_2t<Scalar> start , const point_2t<Scalar> end, const vector<contour_2t<Scalar>> & obst, OutIter out) {

         map<point_2t<Scalar>, int> dist;
         map<point_2t<Scalar>, point_2t<Scalar>> parent;
         vector<segment_2t<Scalar>> v_graph;
         const float INF = 100000000;

         cg::get_visibility(start, end, obst, std::back_inserter(v_graph));

         for (segment_2t<Scalar> seg : v_graph) {
            dist[seg[0]] = INF;
            dist[seg[1]] = INF;
         }

         dist[start] = 0;

         for (int i = 0; i < dist.size(); ++i) {
            for (segment_2t<Scalar> seg : v_graph) {

               point_2t<Scalar> a = seg[0];
               point_2t<Scalar> b = seg[1];

               float cur_dist = cg::distance_point_to_point(a, b);

               // do it twise
               for (int i = 0; i < 2; ++i) {
                  if (dist[b] > dist[a] + cur_dist) {
                     dist[b] = dist[a] + cur_dist;
                     parent[b] = a;
                  }

                  a = seg[1];
                  b = seg[0];
               }
            }
         }

         point_2t<Scalar> cur = end;

         while ( cur != start) {
            segment_2t<Scalar> seg(cur, parent[cur]);
            *(out++) = seg;
            cur = parent[cur];

         }

         //cur = start;
   }


}
