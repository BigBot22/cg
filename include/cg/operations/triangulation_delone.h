#pragma once

#include <algorithm>
#include <cg/operations/orientation.h>
#include <cg/primitives/triangle.h>
#include <cg/primitives/segment.h>
#include <cg/io/segment.h>
#include <set>
#include <map>
#include <memory>
#include <boost/optional.hpp>
#include <exception>

namespace cg
{
   template <class Scalar> struct face;
   template <class Scalar> struct vertex;
   template <class Scalar> struct edge;

   template <class Scalar>
   using Vertex = std::shared_ptr<vertex<Scalar> >;
   template <class Scalar>
   using Edge = std::shared_ptr<edge<Scalar> >;
   template <class Scalar>
   using Face = std::shared_ptr<face<Scalar> >;

   template <class Scalar>
   struct edge {
      edge(Vertex<Scalar> start) : start(start) {}

      void init_members(Edge<Scalar> _next_edge, Face<Scalar> _inc_face) {
         next_edge = _next_edge;
         inc_face = _inc_face;
      }

      //members
      Vertex<Scalar> start;
      Edge<Scalar> twin_edge, next_edge;
      Face<Scalar> inc_face;
   };

   template <class Scalar>
   bool compare(Edge<Scalar> e1, Edge<Scalar> e2) {
      point_2t<Scalar> e1_start = e1->start->to_point(), e1_end = e1->next_edge->start->to_point();
      point_2t<Scalar> e2_start = e2->start->to_point(), e2_end = e2->next_edge->start->to_point();
      return cg::orientation(e1_start, e1_end, e1_end + (e2_end - e2_start)) == cg::CG_RIGHT;
   }

   template <class Scalar>
   struct vertex : point_2t<Scalar> {
      vertex(bool is_inf_point) : is_inf_point(is_inf_point) {}
      vertex(Scalar a, Scalar b) : point_2t<Scalar>(a, b), is_inf_point(false) {}
      vertex(point_2t<Scalar> p) : point_2t<Scalar>(p), is_inf_point(false) {}

      point_2t<Scalar> to_point() {
         return point_2t<Scalar>(this->x, this->y);
      }

      //members
      Edge<Scalar> inc_edge;
      bool is_inf_point;
   };


   template <class Scalar>
   struct face {
      face() : is_inf_face(false) {}

      //members
      Edge<Scalar> inc_edge;
      bool is_inf_face;
   };

   template <class Scalar>
   struct cell {

      cell() {
         vertex<Scalar> * inf_p = new vertex<Scalar>(true);
         vertexes.push_back(Vertex<Scalar>(inf_p));
      }



      // returns vector of indexes + pair of min and max edge (in case of point out of polygon)
      std::pair<std::vector<int>, std::pair<Edge<Scalar>, Edge<Scalar>>> find_face(point_2t<Scalar> const & p) {
         std::vector<int> found_faces;
         std::pair<Edge<Scalar>, Edge<Scalar>> min_max_edge;

         //...

         return std::pair<std::vector<int>, std::pair<Edge<Scalar>, Edge<Scalar>>>(found_faces, min_max_edge);
      }

      void add_vertex(point_2t<Scalar> const & p) {
         // for splitting cases in debug
         //std::cout << "__________________" << std::endl;

         // vertex is common for both cases
         vertex<Scalar> * a = new vertex<Scalar>(p);
         Vertex<Scalar> a_ptr(a);

         //...

      }

      void fix_edge(Edge<Scalar> e) {
         //...
      }

      void flip(Edge<Scalar> e) {
         //...
      }

      bool is_edge_bad(Edge<Scalar> e, bool is_twin = false) {

         return false;
      }

      bool is_inside(Vertex<Scalar> va, Vertex<Scalar> vb, Vertex<Scalar> vc, Vertex<Scalar> vd) {
         //...
      }

      void set_twins(Edge<Scalar> e1, Edge<Scalar> e2) {
         //...
      }


      // it creates faces, but (!!!) it doesn't set twins (because in such a method we don't know them)
      Face<Scalar> make_face(Vertex<Scalar> a, Vertex<Scalar> b, Vertex<Scalar> c) {
         Face<Scalar> cur_face_ptr(new face<Scalar>());
         //...
         return cur_face_ptr;
      }

      bool contains_point(point_2t<Scalar> const & p) {
         for (auto v : vertexes) {
            if (v->to_point() == p) {
               return true;
            }
         }
         return false;
      }


      std::vector<triangle_2t<Scalar> > get_triangulation() {
         std::vector<triangle_2t<Scalar> > res;
         return res;
      }

   private:
      std::vector<Face<Scalar>> faces;
      std::vector<Vertex<Scalar>> vertexes;
   };

   template <class Scalar>
   struct delaunay_triangulation
   {

      delaunay_triangulation() {}

      void add_point(point_2t<Scalar> p)
      {
         if (!tr_cell.contains_point(p)) tr_cell.add_vertex(p);
      }

      std::vector<triangle_2t<Scalar> > get_delaunay_triangulation() {
         return tr_cell.get_triangulation();
      }

   private:
      std::vector<point_2t<Scalar> > points;
      std::vector<triangle_2t<Scalar> > res;
      cell<Scalar> tr_cell;
   };

}
