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

# Include any dependencies generated for this target.
include examples/orientation/CMakeFiles/orientation_contour_ccw.dir/depend.make

# Include the progress variables for this target.
include examples/orientation/CMakeFiles/orientation_contour_ccw.dir/progress.make

# Include the compile flags for this target's objects.
include examples/orientation/CMakeFiles/orientation_contour_ccw.dir/flags.make

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o: examples/orientation/CMakeFiles/orientation_contour_ccw.dir/flags.make
examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o: examples/orientation/orientation_contour_ccw.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o"
	cd /home/bigbot/cg/examples/orientation && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o -c /home/bigbot/cg/examples/orientation/orientation_contour_ccw.cpp

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.i"
	cd /home/bigbot/cg/examples/orientation && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/examples/orientation/orientation_contour_ccw.cpp > CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.i

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.s"
	cd /home/bigbot/cg/examples/orientation && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/examples/orientation/orientation_contour_ccw.cpp -o CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.s

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.requires:
.PHONY : examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.requires

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.provides: examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.requires
	$(MAKE) -f examples/orientation/CMakeFiles/orientation_contour_ccw.dir/build.make examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.provides.build
.PHONY : examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.provides

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.provides.build: examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o

# Object files for target orientation_contour_ccw
orientation_contour_ccw_OBJECTS = \
"CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o"

# External object files for target orientation_contour_ccw
orientation_contour_ccw_EXTERNAL_OBJECTS =

examples/orientation/orientation_contour_ccw: examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o
examples/orientation/orientation_contour_ccw: examples/orientation/CMakeFiles/orientation_contour_ccw.dir/build.make
examples/orientation/orientation_contour_ccw: src/libvisualization.a
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libgmp.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libQtGui.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libQtCore.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libGL.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libSM.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libICE.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libX11.so
examples/orientation/orientation_contour_ccw: /usr/lib/x86_64-linux-gnu/libXext.so
examples/orientation/orientation_contour_ccw: examples/orientation/CMakeFiles/orientation_contour_ccw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable orientation_contour_ccw"
	cd /home/bigbot/cg/examples/orientation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/orientation_contour_ccw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/orientation/CMakeFiles/orientation_contour_ccw.dir/build: examples/orientation/orientation_contour_ccw
.PHONY : examples/orientation/CMakeFiles/orientation_contour_ccw.dir/build

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/requires: examples/orientation/CMakeFiles/orientation_contour_ccw.dir/orientation_contour_ccw.cpp.o.requires
.PHONY : examples/orientation/CMakeFiles/orientation_contour_ccw.dir/requires

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/clean:
	cd /home/bigbot/cg/examples/orientation && $(CMAKE_COMMAND) -P CMakeFiles/orientation_contour_ccw.dir/cmake_clean.cmake
.PHONY : examples/orientation/CMakeFiles/orientation_contour_ccw.dir/clean

examples/orientation/CMakeFiles/orientation_contour_ccw.dir/depend:
	cd /home/bigbot/cg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bigbot/cg /home/bigbot/cg/examples/orientation /home/bigbot/cg /home/bigbot/cg/examples/orientation /home/bigbot/cg/examples/orientation/CMakeFiles/orientation_contour_ccw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/orientation/CMakeFiles/orientation_contour_ccw.dir/depend

