cmake_minimum_required(VERSION 2.6 FATAL_ERROR)
project(new_task-example)
add_executable(new_task new_task.cpp)
target_link_libraries(new_task visualization ${GMP_LIBRARIES})
