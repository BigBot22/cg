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
include examples/operations/CMakeFiles/triangulation_delone.dir/depend.make

# Include the progress variables for this target.
include examples/operations/CMakeFiles/triangulation_delone.dir/progress.make

# Include the compile flags for this target's objects.
include examples/operations/CMakeFiles/triangulation_delone.dir/flags.make

examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o: examples/operations/CMakeFiles/triangulation_delone.dir/flags.make
examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o: examples/operations/triangulation_delone.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o"
	cd /home/bigbot/cg/examples/operations && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o -c /home/bigbot/cg/examples/operations/triangulation_delone.cpp

examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.i"
	cd /home/bigbot/cg/examples/operations && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/examples/operations/triangulation_delone.cpp > CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.i

examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.s"
	cd /home/bigbot/cg/examples/operations && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/examples/operations/triangulation_delone.cpp -o CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.s

examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.requires:
.PHONY : examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.requires

examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.provides: examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.requires
	$(MAKE) -f examples/operations/CMakeFiles/triangulation_delone.dir/build.make examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.provides.build
.PHONY : examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.provides

examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.provides.build: examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o

# Object files for target triangulation_delone
triangulation_delone_OBJECTS = \
"CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o"

# External object files for target triangulation_delone
triangulation_delone_EXTERNAL_OBJECTS =

examples/operations/triangulation_delone: examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o
examples/operations/triangulation_delone: examples/operations/CMakeFiles/triangulation_delone.dir/build.make
examples/operations/triangulation_delone: src/libvisualization.a
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libgmp.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libQtGui.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libQtCore.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libGL.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libSM.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libICE.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libX11.so
examples/operations/triangulation_delone: /usr/lib/x86_64-linux-gnu/libXext.so
examples/operations/triangulation_delone: examples/operations/CMakeFiles/triangulation_delone.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable triangulation_delone"
	cd /home/bigbot/cg/examples/operations && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/triangulation_delone.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/operations/CMakeFiles/triangulation_delone.dir/build: examples/operations/triangulation_delone
.PHONY : examples/operations/CMakeFiles/triangulation_delone.dir/build

examples/operations/CMakeFiles/triangulation_delone.dir/requires: examples/operations/CMakeFiles/triangulation_delone.dir/triangulation_delone.cpp.o.requires
.PHONY : examples/operations/CMakeFiles/triangulation_delone.dir/requires

examples/operations/CMakeFiles/triangulation_delone.dir/clean:
	cd /home/bigbot/cg/examples/operations && $(CMAKE_COMMAND) -P CMakeFiles/triangulation_delone.dir/cmake_clean.cmake
.PHONY : examples/operations/CMakeFiles/triangulation_delone.dir/clean

examples/operations/CMakeFiles/triangulation_delone.dir/depend:
	cd /home/bigbot/cg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bigbot/cg /home/bigbot/cg/examples/operations /home/bigbot/cg /home/bigbot/cg/examples/operations /home/bigbot/cg/examples/operations/CMakeFiles/triangulation_delone.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/operations/CMakeFiles/triangulation_delone.dir/depend

