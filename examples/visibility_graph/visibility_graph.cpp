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

#include <cg/operations/visibility_graph.h>

#include <cg/operations/shortest_path.h>

#include "cg/io/point.h"
#include <cg/primitives/contour.h>
#include <map>

using cg::point_2;
using cg::point_2f;
using cg::vector_2f;

struct ccw_contour_convex_viewer : cg::visualization::viewer_adapter
{
   ccw_contour_convex_viewer()
   {
      //in_building_ = true;
      in_building_abst = false;

      start.x = -250;
      start.y = 0;

      finish.x = 250;
      finish.y = 50;

   }

   void draw(cg::visualization::drawer_type & drawer) const
   {

      drawer.set_color(Qt::blue);

      for (size_t i = 0; i < graph.size(); ++i)
      {

         drawer.draw_line(graph[i][0], graph[i][1]);

      }

      drawer.set_color(Qt::yellow);

      for (cg::contour_2 cont : obstecals)
      {

         for (size_t i = 0; i < cont.size(); ++i)
         {
            drawer.draw_line(cont[i], cont[i < cont.size() - 1 ? i +  1 : 0]);
         }

      }


      if (in_building_abst)
      {
         drawer.set_color(Qt::white);

         for (int i = 1; i < cont.size(); ++i) {
            drawer.draw_line(cont[i - 1], cont[i]);
         }
      }


//      drawer.set_color(Qt::green);
//      for (cg::segment_2 seg : s_path)
//      {

//         drawer.draw_line(seg[0], seg[1]);

//      }

      drawer.set_color(Qt::red);
      drawer.draw_point(start, 5);
      drawer.draw_point(finish, 5);

      return;
   }

   void print(cg::visualization::printer_type & p) const
   {
      p.corner_stream() << "double-click to clear." << cg::visualization::endl
                        << "press mouse rbutton for add vertex (click to first point to complete contour)" << cg::visualization::endl
                        << "move vertex with rbutton" << cg::visualization::endl;
                        //<< "eps:" << eps << cg::visualization::endl;


//      for (size_t i = 0; i < points_.size(); ++i)
//      {
//         p.global_stream((point_2f)points_[i] + vector_2f(5, 0)) << i;
//      }
   }

   bool on_double_click(const point_2f & p)
   {
      obstecals.clear();
      in_building_abst = false;
      abst_num = 0;
      graph.clear();
      //s_path.clear();
      return true;
   }

   cg::point_2 a;
   cg::point_2 b;
   cg::contour_2 cont;
   bool on_press(const point_2f & p)
   {
      if (!in_building_abst)
      {
         in_building_abst = true;

         cg::contour_2 tmp;
         cont = tmp;
         cont.add_point(p);
         //obstecals.push_back(points_);
      }
      else
      {
         point_2 b = cont[cont.size() - 1];
         if (fabs(p.x - b.x) < 30 && fabs(p.y - b.y) < 30)
         {
            in_building_abst = false;
            abst_num++;
            obstecals.push_back(cont);
         }
         else
         {
            cont.add_point(p);
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

private:
   //bool in_building_;
   bool in_building_abst;
   //std::vector<cg::point_2> points_;
   std::vector<cg::contour_2> obstecals;
   std::vector<cg::segment_2> graph;
   //boost::optional<int> current_vertex_;
   size_t abst_num = 0;
   cg::segment_2 s_path;
   cg::point_2 start;
   cg::point_2 finish;


   void update_points()
   {
      graph.clear();
      //cg::get_visibility( start, finish, obstecals, std::back_inserter(graph));

      visibility_graph(obstecals, start, finish, std::back_inserter(graph));

      //shortest_path(obstecals, start, finish, graph, std::back_inserter(s_path));
   }

};


int main(int argc, char ** argv)
{
   QApplication app(argc, argv);
   ccw_contour_convex_viewer viewer;
   cg::visualization::run_viewer(&viewer, "Visibility Graph viewer");

}


