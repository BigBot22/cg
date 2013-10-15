#include <vector>
#include <stack>

#include <QColor>
#include <QApplication>

#include <boost/optional.hpp>

#include "cg/visualization/viewer_adapter.h"
#include "cg/visualization/draw_util.h"

#include <cg/convex_hull/quick_hull.h>
#include <cg/operations/orientation.h>

#include <cg/operations/has_intersection/segment_segment.h>

#include <cg/duglas_pecher/duglas_pecher.h>

#include "cg/io/point.h"

using cg::point_2;
using cg::point_2f;
using cg::vector_2f;

struct ccw_contour_convex_viewer : cg::visualization::viewer_adapter
{
   ccw_contour_convex_viewer()
   {
      //in_building_ = true;
      in_building_abst = false;
      graph.resize(0);
   }

   void draw(cg::visualization::drawer_type & drawer) const
   {
      drawer.set_color(Qt::yellow);

      for (size_t i = 0; i < set_of_points_.size(); ++i)
      {
         if (abst_num < i + 1)
         {
            drawer.set_color(Qt::white);
         }

         for (size_t j = 1; j < set_of_points_[i].size(); ++j)
         {
            drawer.draw_line(set_of_points_[i][j - 1], set_of_points_[i][j]);
         }

      }

      drawer.set_color(Qt::blue);

      for (size_t i = 1; i < graph.size(); i++, i++)
      {

         drawer.draw_line(graph[i - 1], graph[i]);

      }

      return;
   }

   void print(cg::visualization::printer_type & p) const
   {
      p.corner_stream() << "double-click to clear." << cg::visualization::endl
                        << "press mouse rbutton for add vertex (click to first point to complete contour)" << cg::visualization::endl
                        << "move vertex with rbutton" << cg::visualization::endl;
                        //<< "eps:" << eps << cg::visualization::endl;


      for (size_t i = 0; i < points_.size(); ++i)
      {
         p.global_stream((point_2f)points_[i] + vector_2f(5, 0)) << i;
      }
   }

   bool on_double_click(const point_2f & p)
   {
      set_of_points_.clear();
      points_.clear();
      in_building_abst = false;
      abst_num = 0;
      graph.clear();
      return true;
   }

   bool on_press(const point_2f & p)
   {
      if (!in_building_abst)
      {
         in_building_abst = true;

         points_.clear();
         points_.push_back(p);
         set_of_points_.push_back(points_);
      }
      else
      {
         point_2 b = set_of_points_[set_of_points_.size() - 1][0];
         if (fabs(p.x - b.x) < 15 && fabs(p.y - b.y) < 15)
         {
            in_building_abst = false;
            abst_num++;
            set_of_points_[set_of_points_.size() - 1].push_back(b);
         }
         else
         {
            set_of_points_[set_of_points_.size() - 1].push_back(p);
         }

      }

      update_points();
      return true;
   }

   bool on_release(const point_2f & p)
   {
      return true;
   }

   bool on_move(const point_2f & p)
   {

//      if (current_vertex_)
//      {
//         points_[*current_vertex_] = p;
//      }

      return true;
   }

   bool on_key(int key)
   {
      switch (key)
      {

      case Qt::Key_Space :

         update_points();
         break;

      case Qt::Key_Up :
         //eps += 1;
         //update_points();
         break;

      case Qt::Key_Down :
        // eps >= 0 ? eps -= 1 : eps;
        // update_points();
         break;


      default :
         return false;
      }

      return true;
   }

   bool no_intersect(point_2 a1, point_2 b1)
   {
      for (size_t i = 0; i < set_of_points_.size(); ++i)
      {
         for (size_t j = 1; j < set_of_points_[i].size(); ++j)
         {
            point_2 a = set_of_points_[i][j];
            point_2 b = set_of_points_[i][j - 1];

            assert(a != b);
            assert(a1 != b1);

            if(a1 != a && a1 != b && b1 != b && b1 != a)
            {
               if( cg::has_intersection(cg::segment_2(a1, b1), cg::segment_2(a, b)))
               {
                  return false;
               }
            }
         }
      }

      return true;
   }

   bool is_tangent(cg::segment_2 seg, point_2 c)
   {
      return (cg::orientation(seg[0], seg[1], c) == cg::CG_RIGHT) ? true : false;
   }

void visibility_graph(std::vector<std::vector<point_2>> set_of_points_,std::vector<point_2> &graph)
{
   graph.clear();
   //graph.shrink_to_fit();
   for (size_t i = 0; i < set_of_points_.size() - 1; ++i)
   {
      for (size_t j = 0; j < set_of_points_[i].size() - 1; ++j)
      {
         point_2 a = set_of_points_[i][j];

         for (size_t k = i + 1 ; k < set_of_points_.size(); ++k)
         {
            for (size_t z = 0; z < set_of_points_[k].size() - 1; ++z)
            {
               point_2 b = set_of_points_[k][z];

               //
               if (a == b) continue;
               //assert(a != b);
               if(no_intersect(a, b) == true )
               {

                  point_2 a_next = set_of_points_[i][j + 1];

                  point_2 a_prev;
                  if(j == 0) a_prev = set_of_points_[i][set_of_points_[i].size() - 2];
                  else a_prev = set_of_points_[i][j - 1];

                  point_2 b_next = set_of_points_[k][z + 1];

                  point_2 b_prev;
                  if(z == 0) b_prev = set_of_points_[k][set_of_points_[k].size() - 2];
                  else b_prev = set_of_points_[k][z - 1];


                  if ( ((cg::orientation(a_prev, a, b) == cg::CG_LEFT) || (cg::orientation(a_next, a, b) == cg::CG_RIGHT)) )
                  if ( ((cg::orientation(b_prev, b, a) == cg::CG_LEFT) || (cg::orientation(b_next, b, a) == cg::CG_RIGHT)) )
                  {
                     graph.push_back(a);
                     graph.push_back(b);
                  }
               }
            }
         }
      }
   }
}


private:
   //bool in_building_;
   bool in_building_abst;
   std::vector<point_2> points_;
   std::vector<std::vector<point_2>> set_of_points_;
   std::vector<point_2> graph;
   //boost::optional<int> current_vertex_;
   size_t abst_num = 0;
   //float_t eps = 30;

   void update_points()
   {
      visibility_graph(set_of_points_, graph);

   }

};


int main(int argc, char ** argv)
{
   QApplication app(argc, argv);
   ccw_contour_convex_viewer viewer;
   cg::visualization::run_viewer(&viewer, "Visibility Graph viewer");

}


