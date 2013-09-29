cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

project(duglas_pecher-example)

add_executable(duglas_pecher duglas_pecher.cpp)
target_link_libraries(duglas_pecher visualization ${GMP_LIBRARIES})

