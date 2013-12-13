cmake_minimum_required(VERSION 2.6 FATAL_ERROR)
project(skip_list)
add_executable(skip_list skip_list.cpp)
target_link_libraries(skip_list  visualization ${GMP_LIBRARIES})
