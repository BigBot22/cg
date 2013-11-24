cmake_minimum_required(VERSION 2.6 FATAL_ERROR)
project(visibility_graph2-example)
add_executable(visibility_graph2 visibility_graph2.cpp)
target_link_libraries(visibility_graph2 visualization ${GMP_LIBRARIES})
