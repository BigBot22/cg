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
include tests/CMakeFiles/cg-test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/cg-test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/cg-test.dir/flags.make

tests/CMakeFiles/cg-test.dir/orientation.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/orientation.cpp.o: tests/orientation.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/orientation.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/orientation.cpp.o -c /home/bigbot/cg/tests/orientation.cpp

tests/CMakeFiles/cg-test.dir/orientation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/orientation.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/orientation.cpp > CMakeFiles/cg-test.dir/orientation.cpp.i

tests/CMakeFiles/cg-test.dir/orientation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/orientation.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/orientation.cpp -o CMakeFiles/cg-test.dir/orientation.cpp.s

tests/CMakeFiles/cg-test.dir/orientation.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/orientation.cpp.o.requires

tests/CMakeFiles/cg-test.dir/orientation.cpp.o.provides: tests/CMakeFiles/cg-test.dir/orientation.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/orientation.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/orientation.cpp.o.provides

tests/CMakeFiles/cg-test.dir/orientation.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/orientation.cpp.o

tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o: tests/has_intersection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/has_intersection.cpp.o -c /home/bigbot/cg/tests/has_intersection.cpp

tests/CMakeFiles/cg-test.dir/has_intersection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/has_intersection.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/has_intersection.cpp > CMakeFiles/cg-test.dir/has_intersection.cpp.i

tests/CMakeFiles/cg-test.dir/has_intersection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/has_intersection.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/has_intersection.cpp -o CMakeFiles/cg-test.dir/has_intersection.cpp.s

tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.requires

tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.provides: tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.provides

tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o

tests/CMakeFiles/cg-test.dir/contains.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/contains.cpp.o: tests/contains.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/contains.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/contains.cpp.o -c /home/bigbot/cg/tests/contains.cpp

tests/CMakeFiles/cg-test.dir/contains.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/contains.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/contains.cpp > CMakeFiles/cg-test.dir/contains.cpp.i

tests/CMakeFiles/cg-test.dir/contains.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/contains.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/contains.cpp -o CMakeFiles/cg-test.dir/contains.cpp.s

tests/CMakeFiles/cg-test.dir/contains.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/contains.cpp.o.requires

tests/CMakeFiles/cg-test.dir/contains.cpp.o.provides: tests/CMakeFiles/cg-test.dir/contains.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/contains.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/contains.cpp.o.provides

tests/CMakeFiles/cg-test.dir/contains.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/contains.cpp.o

tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o: tests/convex_hull.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/convex_hull.cpp.o -c /home/bigbot/cg/tests/convex_hull.cpp

tests/CMakeFiles/cg-test.dir/convex_hull.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/convex_hull.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/convex_hull.cpp > CMakeFiles/cg-test.dir/convex_hull.cpp.i

tests/CMakeFiles/cg-test.dir/convex_hull.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/convex_hull.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/convex_hull.cpp -o CMakeFiles/cg-test.dir/convex_hull.cpp.s

tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.requires

tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.provides: tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.provides

tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o

tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o: tests/dynamic_convex_hull.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o -c /home/bigbot/cg/tests/dynamic_convex_hull.cpp

tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/dynamic_convex_hull.cpp > CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.i

tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/dynamic_convex_hull.cpp -o CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.s

tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.requires

tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.provides: tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.provides

tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o

tests/CMakeFiles/cg-test.dir/convex.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/convex.cpp.o: tests/convex.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/convex.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/convex.cpp.o -c /home/bigbot/cg/tests/convex.cpp

tests/CMakeFiles/cg-test.dir/convex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/convex.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/convex.cpp > CMakeFiles/cg-test.dir/convex.cpp.i

tests/CMakeFiles/cg-test.dir/convex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/convex.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/convex.cpp -o CMakeFiles/cg-test.dir/convex.cpp.s

tests/CMakeFiles/cg-test.dir/convex.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/convex.cpp.o.requires

tests/CMakeFiles/cg-test.dir/convex.cpp.o.provides: tests/CMakeFiles/cg-test.dir/convex.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/convex.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/convex.cpp.o.provides

tests/CMakeFiles/cg-test.dir/convex.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/convex.cpp.o

tests/CMakeFiles/cg-test.dir/first_problem.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/first_problem.cpp.o: tests/first_problem.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/first_problem.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/first_problem.cpp.o -c /home/bigbot/cg/tests/first_problem.cpp

tests/CMakeFiles/cg-test.dir/first_problem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/first_problem.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/first_problem.cpp > CMakeFiles/cg-test.dir/first_problem.cpp.i

tests/CMakeFiles/cg-test.dir/first_problem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/first_problem.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/first_problem.cpp -o CMakeFiles/cg-test.dir/first_problem.cpp.s

tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.requires

tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.provides: tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.provides

tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/first_problem.cpp.o

tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o: tests/duglas_pecher.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/duglas_pecher.cpp.o -c /home/bigbot/cg/tests/duglas_pecher.cpp

tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/duglas_pecher.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/duglas_pecher.cpp > CMakeFiles/cg-test.dir/duglas_pecher.cpp.i

tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/duglas_pecher.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/duglas_pecher.cpp -o CMakeFiles/cg-test.dir/duglas_pecher.cpp.s

tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.requires

tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.provides: tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.provides

tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o

tests/CMakeFiles/cg-test.dir/new_task.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/new_task.cpp.o: tests/new_task.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/new_task.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/new_task.cpp.o -c /home/bigbot/cg/tests/new_task.cpp

tests/CMakeFiles/cg-test.dir/new_task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/new_task.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/new_task.cpp > CMakeFiles/cg-test.dir/new_task.cpp.i

tests/CMakeFiles/cg-test.dir/new_task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/new_task.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/new_task.cpp -o CMakeFiles/cg-test.dir/new_task.cpp.s

tests/CMakeFiles/cg-test.dir/new_task.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/new_task.cpp.o.requires

tests/CMakeFiles/cg-test.dir/new_task.cpp.o.provides: tests/CMakeFiles/cg-test.dir/new_task.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/new_task.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/new_task.cpp.o.provides

tests/CMakeFiles/cg-test.dir/new_task.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/new_task.cpp.o

tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o: tests/diametr_of_set.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/diametr_of_set.cpp.o -c /home/bigbot/cg/tests/diametr_of_set.cpp

tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/diametr_of_set.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/diametr_of_set.cpp > CMakeFiles/cg-test.dir/diametr_of_set.cpp.i

tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/diametr_of_set.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/diametr_of_set.cpp -o CMakeFiles/cg-test.dir/diametr_of_set.cpp.s

tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.requires

tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.provides: tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.provides

tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o

tests/CMakeFiles/cg-test.dir/common.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/common.cpp.o: tests/common.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/common.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/common.cpp.o -c /home/bigbot/cg/tests/common.cpp

tests/CMakeFiles/cg-test.dir/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/common.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/common.cpp > CMakeFiles/cg-test.dir/common.cpp.i

tests/CMakeFiles/cg-test.dir/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/common.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/common.cpp -o CMakeFiles/cg-test.dir/common.cpp.s

tests/CMakeFiles/cg-test.dir/common.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/common.cpp.o.requires

tests/CMakeFiles/cg-test.dir/common.cpp.o.provides: tests/CMakeFiles/cg-test.dir/common.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/common.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/common.cpp.o.provides

tests/CMakeFiles/cg-test.dir/common.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/common.cpp.o

tests/CMakeFiles/cg-test.dir/distance.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/distance.cpp.o: tests/distance.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/distance.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/distance.cpp.o -c /home/bigbot/cg/tests/distance.cpp

tests/CMakeFiles/cg-test.dir/distance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/distance.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/distance.cpp > CMakeFiles/cg-test.dir/distance.cpp.i

tests/CMakeFiles/cg-test.dir/distance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/distance.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/distance.cpp -o CMakeFiles/cg-test.dir/distance.cpp.s

tests/CMakeFiles/cg-test.dir/distance.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/distance.cpp.o.requires

tests/CMakeFiles/cg-test.dir/distance.cpp.o.provides: tests/CMakeFiles/cg-test.dir/distance.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/distance.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/distance.cpp.o.provides

tests/CMakeFiles/cg-test.dir/distance.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/distance.cpp.o

tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o: tests/CMakeFiles/cg-test.dir/flags.make
tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o: tests/triangulation_delone.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/bigbot/cg/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o"
	cd /home/bigbot/cg/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cg-test.dir/triangulation_delone.cpp.o -c /home/bigbot/cg/tests/triangulation_delone.cpp

tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cg-test.dir/triangulation_delone.cpp.i"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/bigbot/cg/tests/triangulation_delone.cpp > CMakeFiles/cg-test.dir/triangulation_delone.cpp.i

tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cg-test.dir/triangulation_delone.cpp.s"
	cd /home/bigbot/cg/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/bigbot/cg/tests/triangulation_delone.cpp -o CMakeFiles/cg-test.dir/triangulation_delone.cpp.s

tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.requires:
.PHONY : tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.requires

tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.provides: tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/cg-test.dir/build.make tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.provides.build
.PHONY : tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.provides

tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.provides.build: tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o

# Object files for target cg-test
cg__test_OBJECTS = \
"CMakeFiles/cg-test.dir/orientation.cpp.o" \
"CMakeFiles/cg-test.dir/has_intersection.cpp.o" \
"CMakeFiles/cg-test.dir/contains.cpp.o" \
"CMakeFiles/cg-test.dir/convex_hull.cpp.o" \
"CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o" \
"CMakeFiles/cg-test.dir/convex.cpp.o" \
"CMakeFiles/cg-test.dir/first_problem.cpp.o" \
"CMakeFiles/cg-test.dir/duglas_pecher.cpp.o" \
"CMakeFiles/cg-test.dir/new_task.cpp.o" \
"CMakeFiles/cg-test.dir/diametr_of_set.cpp.o" \
"CMakeFiles/cg-test.dir/common.cpp.o" \
"CMakeFiles/cg-test.dir/distance.cpp.o" \
"CMakeFiles/cg-test.dir/triangulation_delone.cpp.o"

# External object files for target cg-test
cg__test_EXTERNAL_OBJECTS =

tests/cg-test: tests/CMakeFiles/cg-test.dir/orientation.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/contains.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/convex.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/first_problem.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/new_task.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/common.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/distance.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o
tests/cg-test: tests/CMakeFiles/cg-test.dir/build.make
tests/cg-test: /usr/lib/libgtest.a
tests/cg-test: /usr/lib/libgtest_main.a
tests/cg-test: /usr/lib/x86_64-linux-gnu/libgmp.so
tests/cg-test: tests/CMakeFiles/cg-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable cg-test"
	cd /home/bigbot/cg/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cg-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/cg-test.dir/build: tests/cg-test
.PHONY : tests/CMakeFiles/cg-test.dir/build

tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/orientation.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/has_intersection.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/contains.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/convex_hull.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/dynamic_convex_hull.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/convex.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/first_problem.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/duglas_pecher.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/new_task.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/diametr_of_set.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/common.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/distance.cpp.o.requires
tests/CMakeFiles/cg-test.dir/requires: tests/CMakeFiles/cg-test.dir/triangulation_delone.cpp.o.requires
.PHONY : tests/CMakeFiles/cg-test.dir/requires

tests/CMakeFiles/cg-test.dir/clean:
	cd /home/bigbot/cg/tests && $(CMAKE_COMMAND) -P CMakeFiles/cg-test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/cg-test.dir/clean

tests/CMakeFiles/cg-test.dir/depend:
	cd /home/bigbot/cg && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bigbot/cg /home/bigbot/cg/tests /home/bigbot/cg /home/bigbot/cg/tests /home/bigbot/cg/tests/CMakeFiles/cg-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/cg-test.dir/depend
