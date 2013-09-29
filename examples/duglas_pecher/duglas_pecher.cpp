#include <vector>
#include <stack>

#include <QColor>
#include <QApplication>

#include <boost/optional.hpp>

#include "cg/visualization/viewer_adapter.h"
#include "cg/visualization/draw_util.h"

#include <cg/operations/orientation.h>

#include <cg/duglas_pecher/duglas_pecher.h>

#include "cg/io/point.h"

using cg::point_2;
using cg::point_2f;
using cg::vector_2f;

struct ccw_contour_convex_viewer : cg::visualization::viewer_adapter
{
   ccw_contour_convex_viewer()
   {
      in_building_ = true;
   }

   void draw(cg::visualization::drawer_type & drawer) const
   {
      if (in_building_)
      {
         drawer.set_color(Qt::white);

         for (size_t i = 1; i < points_.size(); ++i)
         {
            drawer.draw_line(points_[i - 1], points_[i]);
         }

         return;
      }

   }

   void print(cg::visualization::printer_type & p) const
   {
      p.corner_stream() << "double-click to clear." << cg::visualization::endl
                        << "press mouse rbutton for add vertex (click to first point to complete contour)" << cg::visualization::endl
                        << "move vertex with rbutton" << cg::visualization::endl
                        << "eps:" << eps << cg::visualization::endl;


      for (size_t i = 0; i < points_.size(); ++i)
      {
         p.global_stream((point_2f)points_[i] + vector_2f(5, 0)) << i;
      }
   }

   bool on_double_click(const point_2f & p)
   {
      points_.clear();
      in_building_ = true;
      current_vertex_.reset();
      return true;
   }

   bool on_press(const point_2f & p)
   {
      if (in_building_)
      {
         points_.push_back(p);
         update_points();

         return true;
      }

      return true;
   }

   bool on_release(const point_2f & p)
   {
      if (in_building_)
      {
         return true;
      }

      current_vertex_.reset();

      return true;
   }

   bool on_move(const point_2f & p)
   {
      if (in_building_)
      {
         return true;
      }

      if (current_vertex_)
      {
         points_[*current_vertex_] = p;
      }

      return true;
   }

   bool on_key(int key)
   {
      switch (key)
      {
      case Qt::Key_Up :
         eps += 1;
         update_points();
         break;

      case Qt::Key_Down :
         eps >= 0 ? eps -= 1 : eps;
         update_points();
         break;


      default :
         return false;
      }

      return true;
   }


private:
   bool in_building_;
   std::vector<point_2> points_;
   boost::optional<int> current_vertex_;
   float_t eps = 30;

   void update_points()
   {
      std::vector<point_2> res;
      cg::make_simple(points_.begin(), points_.end(), eps, std::back_inserter(res));

      points_.clear();
      points_.resize(res.size());
      points_ = res;
   }

};


int main(int argc, char ** argv)
{
   QApplication app(argc, argv);
   ccw_contour_convex_viewer viewer;
   cg::visualization::run_viewer(&viewer, "Duglas - Pecher viewer");

}


