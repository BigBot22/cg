# Install script for directory: /home/bigbot/cg/examples

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/bigbot/cg/examples/viewer/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/operations/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/orientation/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/triangulation/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/convex_hull/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/convex/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/duglas_pecher/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/new_task/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/visibility_graph/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/skip_list/cmake_install.cmake")
  INCLUDE("/home/bigbot/cg/examples/visibility_graph2/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

