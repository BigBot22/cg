#include <gtest/gtest.h>
#include <cg/operations/triangulation_delone.h>
#include <cg/primitives/triangle.h>


#include <boost/random.hpp>
#include <cg/primitives/point.h>
#include <misc/random_utils.h>


std::vector<cg::triangle_2> res;

bool is_inside(cg::point_2 a, cg::point_2 b, cg::point_2 c, cg::point_2 d) {
   double a11 = a.x - d.x, a12 = a.y - d.y, a13 = (a.x * a.x - d.x * d.x) + (a.y * a.y - d.y * d.y);
   double a21 = b.x - d.x, a22 = b.y - d.y, a23 = (b.x * b.x - d.x * d.x) + (b.y * b.y - d.y * d.y);
   double a31 = c.x - d.x, a32 = c.y - d.y, a33 = (c.x * c.x - d.x * d.x) + (c.y * c.y - d.y * d.y);
   return a11 * (a22 * a33 - a23 * a32) - a12 * (a21 * a33 - a23 * a31) + a13 * (a21 * a32 - a22 * a31) > 0;
}

bool check_triangulation( std::vector<cg::triangle_2> res) {
   bool ans = true;
   for (cg::triangle_2 t : res) {
      bool cur = true;
      for (cg::triangle_2 help_t : res) {
         for (int i = 0; i < 3; i++) {
            if (cur && t[0] != help_t[i] && t[1] != help_t[i] && t[2] != help_t[i] && is_inside(t[0], t[1], t[2], help_t[i])) {
               ans = cur = false;
            }
         }
      }
   }
   return ans;
}

TEST(common_triangulation_delone_test, simple_case)
{

   cg::delaunay_triangulation<double> tr;
   tr.add_point(cg::point_2(-50, 50));
   tr.add_point(cg::point_2(-50, -50));
   tr.add_point(cg::point_2(50, -50));
   tr.add_point(cg::point_2(50, 50));
   tr.add_point(cg::point_2(0, 84));
   tr.add_point(cg::point_2(-10, -86));

   EXPECT_TRUE( true == check_triangulation(tr.get_delaunay_triangulation()));
}

TEST(common_triangulation_delone_test1, no_gorizont_line)
{
   cg::delaunay_triangulation<double> tr;
   tr.add_point(cg::point_2(0, 0));
   tr.add_point(cg::point_2(50, 0));
   tr.add_point(cg::point_2(25, 50));
   tr.add_point(cg::point_2(25, 0));

   EXPECT_TRUE( true == check_triangulation(tr.get_delaunay_triangulation()));
}

TEST(common_triangulation_delone_test2, no_vertikal_line)
{
   cg::delaunay_triangulation<double> tr;
   tr.add_point(cg::point_2(0, 0));
   tr.add_point(cg::point_2(0, 50));
   tr.add_point(cg::point_2(50, 0));
   tr.add_point(cg::point_2(0, 25));

   EXPECT_TRUE( true == check_triangulation(tr.get_delaunay_triangulation()));
}

TEST(common_triangulation_delone_test3, no_vertikal_line)
{
   cg::delaunay_triangulation<double> tr;
   tr.add_point(cg::point_2(0, 0));
   tr.add_point(cg::point_2(0, 50));
   tr.add_point(cg::point_2(50, 0));
   tr.add_point(cg::point_2(0, 25));

   EXPECT_TRUE( true == check_triangulation(tr.get_delaunay_triangulation()));
}

TEST(common_triangulation_delone_test4, no_some_angle_line)
{
   cg::delaunay_triangulation<double> tr;
   tr.add_point(cg::point_2(0, 0));
   tr.add_point(cg::point_2(0, 50));
   tr.add_point(cg::point_2(50, 50));
   tr.add_point(cg::point_2(25, 25));

   EXPECT_TRUE( true == check_triangulation(tr.get_delaunay_triangulation()));
}


TEST(common_triangulation_delone_test4, random_no_some_angle_line)
{
   cg::delaunay_triangulation<double> tr;
   tr.add_point(cg::point_2(0, 0));
   tr.add_point(cg::point_2(0, 50));
   tr.add_point(cg::point_2(50, 50));

   int count = 3;
   util::uniform_random_real<double> rand(0., 50.);
   double x;
   for (size_t l = 0; l != count; ++l)
   {
       rand >> x;



       tr.add_point(cg::point_2(x, x));

       EXPECT_TRUE( true == check_triangulation(tr.get_delaunay_triangulation()));
   }

}

TEST(common_triangulation_delone_test5, random_no_horizontal_line)
{
   cg::delaunay_triangulation<double> tr;
   tr.add_point(cg::point_2(0, 0));
   tr.add_point(cg::point_2(50, 0));
   tr.add_point(cg::point_2(25, 50));

   int count = 5;
   util::uniform_random_real<double> rand(0., 50.);
   double x;
   for (size_t l = 0; l != count; ++l)
   {
       rand >> x;
       tr.add_point(cg::point_2(x, 0));

       EXPECT_TRUE( true == check_triangulation(tr.get_delaunay_triangulation()));
   }

}
