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

      void init_members(Edge<Scalar> _next, Face<Scalar> _inc_face) {
         next = _next;
         inc_face = _inc_face;
      }

      Vertex<Scalar> start;
      Edge<Scalar> twin, next;
      Face<Scalar> inc_face;
   };

   template <class Scalar>
   bool compare(Edge<Scalar> e1, Edge<Scalar> e2) {

      point_2t<Scalar> e_thierd = e1->next->start->get_point() + (e2->next->start->get_point() - e2->start->get_point());
      return cg::orientation(e1->start->get_point(), e1->next->start->get_point(), e_thierd) == cg::CG_RIGHT;
   }

   template <class Scalar>
   struct vertex : point_2t<Scalar> {
      vertex(bool _is_inf) : is_inf(_is_inf) {}
      vertex(point_2t<Scalar> _p) : point_2t<Scalar>(_p), is_inf(false) {}
      vertex(Scalar _b, Scalar _e) : point_2t<Scalar>(_b, _e), is_inf(false) {}


      point_2t<Scalar> get_point() {
         point_2t<Scalar> p(this->x, this->y);
         return p;
      }

      bool is_inf;
      Edge<Scalar> edge;

   };


   template <class Scalar>
   struct face {
      face() : is_inf(false) {}

      bool is_inf;
      Edge<Scalar> edge;

   };

   template <class Scalar>
   struct cell {

      cell() {
         vertexes.push_back(Vertex<Scalar>(new vertex<Scalar>(true)));
      }

      std::pair<std::vector<int>, std::pair<Edge<Scalar>, Edge<Scalar>>> get_faces(point_2t<Scalar> const & _p) {
         std::vector<int> out_faces;
         std::pair<Edge<Scalar>, Edge<Scalar>> min_max_edges;

         for (int i = 0; i < faces.size(); ++i) {
            faces[i]->is_inf = false;
            auto cur_edge = faces[i]->edge;
            bool flag = true;

            for (int j = 0; j < 3; ++j) {
               if (cur_edge->next->start->is_inf || cur_edge->start->is_inf) {

                  faces[i]->is_inf = true;
                  cur_edge = cur_edge->next;
                  continue;
               }

               int orientation = cg::orientation(cur_edge->start->get_point(), cur_edge->next->start->get_point(), _p);
               if (orientation == CG_RIGHT) {
                  flag = false;
                  break;
               }

               cur_edge = cur_edge->next;
            }

            if (faces[i]->is_inf) {

               cur_edge = faces[i]->edge;
               for (int j = 0; j < 3; ++j) {

                  int orientation = cg::orientation(cur_edge->start->get_point(), cur_edge->next->start->get_point(), _p);
                  if (orientation != CG_RIGHT && !cur_edge->start->is_inf && !cur_edge->next->start->is_inf) {

                     if (min_max_edges.second == nullptr) {

                        min_max_edges.first = cur_edge;
                        min_max_edges.second = cur_edge;
                     } else {

                        if (compare(cur_edge, min_max_edges.first)) {
                           min_max_edges.first = cur_edge;
                        }
                        if (compare(min_max_edges.second, cur_edge)) {
                           min_max_edges.second = cur_edge;
                        }
                     }
                     break;
                  }
                  cur_edge = cur_edge->next;
               }
            }

            if (flag) {

               out_faces.push_back(i);
               //return res;
            }

         }
         std::pair<std::vector<int>, std::pair<Edge<Scalar>, Edge<Scalar>>> res(out_faces, min_max_edges);
         return res;
      }

      ////////////////////  Adding vertex ///////////////



      void add_vertex(point_2t<Scalar> const & _p) {
         vertex<Scalar> * vert = new vertex<Scalar>(_p);
         Vertex<Scalar> vert_ptr(vert);
         vertexes.push_back(vert_ptr);

         if (vertexes.size() == 3) {
            auto face1 = make_face(vertexes[1], vertexes[2], vertexes[0]), face2 = make_face(vertexes[2], vertexes[1], vertexes[0]);

            face1->edge->twin = face2->edge;
            face2->edge->twin = face1->edge;

            face1->edge->next->twin = face2->edge->next->next;
            face2->edge->next->next->twin = face1->edge->next;

            face1->edge->next->next->twin = face2->edge->next;
            face2->edge->next->twin = face1->edge->next->next;

            return;

         } else {
             if (vertexes.size() <= 3) {
                return;
             }
         }


         auto get_face_out = get_faces(_p);

         auto id = get_face_out.first;
         if (id.empty()) {
            std::cout << "ERRORE: face_out is empty!" << std::endl;
            exit(1);
         }

         auto min_max_edges = get_face_out.second;

         Edge<Scalar> edge_1;
         int count_of_vertex = 0;

         if (faces[id[0]]->is_inf) {

            //std::cout << "Out of poligon points cordinats" << std::endl;
            auto cur = min_max_edges.first;
            if (id.size() != 1) {

               min_max_edges.second->next->next = min_max_edges.first->next->next;

               for (int i = 0; i < id.size() - 1; ++i) {
                  cur->next = cur->next->twin->next;
                  cur = cur->next;
               }
            }

            edge_1 = min_max_edges.first;
            count_of_vertex = id.size() + 1 + 1;
            std::vector<bool> trash(faces.size(), false);
            std::vector<Face<Scalar>> tmp_faces;

            for (int tmp_id : id) {
               trash[tmp_id] = true;
            }

            for (int i = 0; i < faces.size(); ++i) {
               if (!trash[i]) {
                  tmp_faces.push_back(faces[i]);
               }
            }

            faces.swap(tmp_faces);

         } else {
            //std::cout << "In poligon points cordinats" << std::endl;
            if (id.size() == 2) {

               Edge<Scalar> cur_edge;
               for (int i = 0; i < 3; i++) {
                  for (int j = 0; j < 3; j++) {
                     if (faces[id[1]]->edge->twin == faces[id[0]]->edge) {
                        cur_edge = faces[id[0]]->edge;
                     }
                     faces[id[1]]->edge = faces[id[1]]->edge->next;
                  }
                  faces[id[0]]->edge = faces[id[0]]->edge->next;
               }

               auto max = id[0];
               auto min = id[0];
               for (int i = 0; i < id.size(); ++i) {
                  if (id[i] > max) max = id[i];
                  if (id[i] < min) min = id[i];
               }

               faces.erase(faces.begin() + max);
               faces.erase(faces.begin() + min);

               cur_edge->next->next->next = cur_edge->twin->next;
               cur_edge->twin->next->next->next = cur_edge->next;
               edge_1 = cur_edge->next;
               count_of_vertex = 4;

            } else {
               count_of_vertex = 3;
               edge_1 = faces[id[0]]->edge;
               faces.erase(faces.begin() + id[0]);
            }
         }

         //std::cout << "Chains edge: " << edge_1->start->get_point() << " " << edge_1->next->start->get_point() << std::endl;

         std::vector<Edge<Scalar>> tmp_edges_ptr(count_of_vertex);
         std::vector<Face<Scalar>> tmp_faces(count_of_vertex);
         auto cur = edge_1;

         for (int i = 0; i < count_of_vertex; ++i) {
            edge<Scalar> * tmp_edge = new edge<Scalar>(vert_ptr);
            edge<Scalar> * twin = new edge<Scalar>(cur->start);
            Edge<Scalar> tmp_ptr(tmp_edge);
            Edge<Scalar> twin_ptr(twin);

            tmp_ptr->twin = twin_ptr;
            twin_ptr->twin = tmp_ptr;
            tmp_edges_ptr[i] = tmp_ptr;

            face<Scalar> * cur_edge_face = new face<Scalar>();
            tmp_faces[i] = Face<Scalar>(cur_edge_face);
            cur_edge_face->edge = cur;
            faces.push_back(tmp_faces[i]);

            cur = cur->next;
         }

         cur = edge_1;
         for (int i = 0; i < count_of_vertex; ++i) {

            auto tmp = cur->next;

            tmp_edges_ptr[i]->next = cur;
            tmp_edges_ptr[i]->twin->next = tmp_edges_ptr[(i + count_of_vertex - 1) % count_of_vertex];
            cur->next = tmp_edges_ptr[(i + 1) % count_of_vertex]->twin;

            tmp_edges_ptr[i]->inc_face = tmp_faces[i];
            tmp_edges_ptr[i]->twin->inc_face = tmp_faces[(i + count_of_vertex - 1) % count_of_vertex];
            cur->inc_face = tmp_faces[i];

            cur = tmp;
         }

         cur = edge_1;

         //std::cout << "Count of vertex: " << count_of_vertex << std::endl;
         for (int i = 0; i < count_of_vertex; ++i) {
            edge_fixer(cur);
            cur = cur->next->twin->next;
         }
      }

      void edge_fixer(Edge<Scalar> edge) {
         if (edge->start->is_inf || edge->twin->start->is_inf) {
            return;
         }
         //std::cout << "Going to fix edge: " << edge->start->get_point() << " " << edge->next->start->get_point() << " " << edge->next->next->start->get_point();

         if (edge_flip_cheaker(edge)) {
            //std::cout << " edge need to flip" << std::endl;

            auto to_fix = edge->twin->next;
            auto to_fix_next = edge->twin->next->next;

            flip(edge);

            edge_fixer(to_fix);
            edge_fixer(to_fix_next);
         } else {
            //std::cout << " ok" << std::endl;
         }
      }

      void flip(Edge<Scalar> e) {

         edge<Scalar> * edge_ = new edge<Scalar>(e->next->next->start);
         edge<Scalar> * twin = new edge<Scalar>(e->twin->next->next->start);
         Edge<Scalar> edge_ptr(edge_);
         Edge<Scalar> twin_ptr(twin);

         edge_ptr->twin = twin_ptr;
         twin_ptr->twin = edge_ptr;

         auto face_1 = e->inc_face;
         auto face_2 = e->twin->inc_face;

         face_1->edge = e->next;
         face_2->edge = e->twin->next;

         e->next->next->inc_face = face_2;
         e->twin->next->next->inc_face = face_1;

         edge_ptr->inc_face = face_1;
         twin_ptr->inc_face = face_2;

         edge_ptr->next = e->twin->next->next;
         twin_ptr->next = e->next->next;

         e->next->next->next = e->twin->next;
         e->next->next = edge_ptr;
         e->twin->next->next->next = e->next;
         e->twin->next->next = twin_ptr;
      }

      bool edge_flip_cheaker(Edge<Scalar> edge, bool is_twin = false) {

         for (auto vertex : vertexes) {
            if (vertex->is_inf ||
                edge->next->next->start->is_inf ||
                edge->start == vertex ||
                edge->next->start == vertex ||
                edge->next->next->start == vertex) continue;

            if (is_inside(edge->start, edge->next->start, edge->next->next->start, vertex)) {
               return true;
            }
         }
         if (!is_twin) {
            return edge_flip_cheaker(edge->twin, true);
         }

         return false;
      }

      bool is_inside(Vertex<Scalar> v1_b, Vertex<Scalar> v1_e, Vertex<Scalar> v2_b, Vertex<Scalar> v2_e) {

         point_2t<Scalar> b1 = v1_b->get_point();
         point_2t<Scalar> e1 = v1_e->get_point();
         point_2t<Scalar> b2 = v2_b->get_point();
         point_2t<Scalar> e2 = v2_e->get_point();

         double d1x = b1.x - e2.x;
         double d1y = b1.y - e2.y;
         double d1 = (b1.x * b1.x - e2.x * e2.x) + (b1.y * b1.y - e2.y * e2.y);

         double d2x = e1.x - e2.x;
         double d2y = e1.y - e2.y;
         double d2 = (e1.x * e1.x - e2.x * e2.x) + (e1.y * e1.y - e2.y * e2.y);

         double a31 = b2.x - e2.x, a32 = b2.y - e2.y, a33 = (b2.x * b2.x - e2.x * e2.x) + (b2.y * b2.y - e2.y * e2.y);

         double a = d1x * (d2y * a33 - d2 * a32);
         double b = d1y * (d2x * a33 - d2 * a31);
         double c = d1 * (d2x * a32 - d2y * a31);
         bool res = 0 < (a - b + c);
         return res;
      }

      Face<Scalar> make_face(Vertex<Scalar> v1, Vertex<Scalar> v2, Vertex<Scalar> v3) {

         Vertex<Scalar> vertexes [3] = {v1, v2, v3};
         Face<Scalar> cur_edge_face_ptr(new face<Scalar>());
         Edge<Scalar> edges[3];
         edge<Scalar> * ptr_edges[3];

         for (int i = 0; i < 3; ++i) {
            ptr_edges[i] = new edge<Scalar>(vertexes[i]);
            edges[i] = Edge<Scalar>(ptr_edges[i]);
         }

         for (int i = 0; i < 3; ++i) {

            edges[i]->init_members(edges[(i + 1) % 3], cur_edge_face_ptr);
         }
         cur_edge_face_ptr->edge = edges[0];
         faces.push_back(cur_edge_face_ptr);
         return cur_edge_face_ptr;
      }

      bool contains_point(point_2t<Scalar> const & _p) {
         for (auto v : vertexes) {
            if (v->get_point() == _p) {
               return true;
            }
         }
         return false;
      }


      std::vector<triangle_2t<Scalar> > get_triangulation() {
         std::vector<triangle_2t<Scalar> > res;
         //std::cout << "Faces :" << std::endl;
         for (int i = 0; i < faces.size(); i++) {
            Face<Scalar> cur_edge_face = faces[i];

//            auto cur = cur_edge_face->edge;
//            for (int j = 0; j < 3; j++) {
//               if (cur->start->is_inf) {
//                  std::cout << "(inf) ";
//               } else {
//                  std::cout << cur->start->get_point();
//               }
//               cur = cur->next;
//            }
//            std::cout << std::endl;

            if (cur_edge_face->edge->start->is_inf || cur_edge_face->edge->next->start->is_inf ||
                cur_edge_face->edge->next->next->start->is_inf) continue;

            res.push_back(triangle_2t<Scalar>(cur_edge_face->edge->start->get_point(),
                                              cur_edge_face->edge->next->start->get_point(), cur_edge_face->edge->next->next->start->get_point()));
         }
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

      void add_point(point_2t<Scalar> _p)
      {
         if (!tr_cell.contains_point(_p)) tr_cell.add_vertex(_p);
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
