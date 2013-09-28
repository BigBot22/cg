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
include examples/viewer/CMakeFiles/viewer-example.dir/depend.make

# Include the progress variables for this target.
include examples/viewer/CMakeFiles/viewer-example.dir/progress.make

# Include the compile flags for this target's objects.
include examples/viewer/CMakeFiles/viewer-example.dir/flags.make

examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o: examples/viewer/CMakeFiles/viewer-example.dir/flags.make
examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o: examples/viewer/viewer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o"
	cd /home/bigbot/cg/examples/viewer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/viewer-example.dir/viewer.cpp.o -c /home/bigbot/cg/examples/viewer/viewer.cpp

examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/viewer-example.dir/viewer.cpp.i"
	cd /home/bigbot/cg/examples/viewer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/examples/viewer/viewer.cpp > CMakeFiles/viewer-example.dir/viewer.cpp.i

examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/viewer-example.dir/viewer.cpp.s"
	cd /home/bigbot/cg/examples/viewer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/examples/viewer/viewer.cpp -o CMakeFiles/viewer-example.dir/viewer.cpp.s

examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.requires:
.PHONY : examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.requires

examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.provides: examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.requires
	$(MAKE) -f examples/viewer/CMakeFiles/viewer-example.dir/build.make examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.provides.build
.PHONY : examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.provides

examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.provides.build: examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o

# Object files for target viewer-example
viewer__example_OBJECTS = \
"CMakeFiles/viewer-example.dir/viewer.cpp.o"

# External object files for target viewer-example
viewer__example_EXTERNAL_OBJECTS =

examples/viewer/viewer-example: examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o
examples/viewer/viewer-example: examples/viewer/CMakeFiles/viewer-example.dir/build.make
examples/viewer/viewer-example: src/libvisualization.a
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libQtGui.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libQtCore.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libGL.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libSM.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libICE.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libX11.so
examples/viewer/viewer-example: /usr/lib/x86_64-linux-gnu/libXext.so
examples/viewer/viewer-example: examples/viewer/CMakeFiles/viewer-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable viewer-example"
	cd /home/bigbot/cg/examples/viewer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/viewer-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/viewer/CMakeFiles/viewer-example.dir/build: examples/viewer/viewer-example
.PHONY : examples/viewer/CMakeFiles/viewer-example.dir/build

examples/viewer/CMakeFiles/viewer-example.dir/requires: examples/viewer/CMakeFiles/viewer-example.dir/viewer.cpp.o.requires
.PHONY : examples/viewer/CMakeFiles/viewer-example.dir/requires

examples/viewer/CMakeFiles/viewer-example.dir/clean:
	cd /home/bigbot/cg/examples/viewer && $(CMAKE_COMMAND) -P CMakeFiles/viewer-example.dir/cmake_clean.cmake
.PHONY : examples/viewer/CMakeFiles/viewer-example.dir/clean

examples/viewer/CMakeFiles/viewer-example.dir/depend:
	cd /home/bigbot/cg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bigbot/cg /home/bigbot/cg/examples/viewer /home/bigbot/cg /home/bigbot/cg/examples/viewer /home/bigbot/cg/examples/viewer/CMakeFiles/viewer-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/viewer/CMakeFiles/viewer-example.dir/depend

