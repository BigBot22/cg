# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bigbot/cg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bigbot/cg

# Utility rule file for visualization_headers.

# Include the progress variables for this target.
include include/CMakeFiles/visualization_headers.dir/progress.make

include/CMakeFiles/visualization_headers:

visualization_headers: include/CMakeFiles/visualization_headers
visualization_headers: include/CMakeFiles/visualization_headers.dir/build.make
.PHONY : visualization_headers

# Rule to build all files generated by this target.
include/CMakeFiles/visualization_headers.dir/build: visualization_headers
.PHONY : include/CMakeFiles/visualization_headers.dir/build

include/CMakeFiles/visualization_headers.dir/clean:
	cd /home/bigbot/cg/include && $(CMAKE_COMMAND) -P CMakeFiles/visualization_headers.dir/cmake_clean.cmake
.PHONY : include/CMakeFiles/visualization_headers.dir/clean

include/CMakeFiles/visualization_headers.dir/depend:
	cd /home/bigbot/cg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bigbot/cg /home/bigbot/cg/include /home/bigbot/cg /home/bigbot/cg/include /home/bigbot/cg/include/CMakeFiles/visualization_headers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/CMakeFiles/visualization_headers.dir/depend

