# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /home/linlei/Downloads/clion-2017.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/linlei/Downloads/clion-2017.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/linlei/workspace/prometheus_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linlei/workspace/prometheus_cpp/cmake-build-debug

# Include any dependencies generated for this target.
include src/gtest/CMakeFiles/gtest-example.dir/depend.make

# Include the progress variables for this target.
include src/gtest/CMakeFiles/gtest-example.dir/progress.make

# Include the compile flags for this target's objects.
include src/gtest/CMakeFiles/gtest-example.dir/flags.make

src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o: src/gtest/CMakeFiles/gtest-example.dir/flags.make
src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o: ../src/gtest/gtestExample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linlei/workspace/prometheus_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/gtest && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest-example.dir/gtestExample.cpp.o -c /home/linlei/workspace/prometheus_cpp/src/gtest/gtestExample.cpp

src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest-example.dir/gtestExample.cpp.i"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/gtest && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linlei/workspace/prometheus_cpp/src/gtest/gtestExample.cpp > CMakeFiles/gtest-example.dir/gtestExample.cpp.i

src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest-example.dir/gtestExample.cpp.s"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/gtest && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linlei/workspace/prometheus_cpp/src/gtest/gtestExample.cpp -o CMakeFiles/gtest-example.dir/gtestExample.cpp.s

src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.requires:

.PHONY : src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.requires

src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.provides: src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.requires
	$(MAKE) -f src/gtest/CMakeFiles/gtest-example.dir/build.make src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.provides.build
.PHONY : src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.provides

src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.provides.build: src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o


# Object files for target gtest-example
gtest__example_OBJECTS = \
"CMakeFiles/gtest-example.dir/gtestExample.cpp.o"

# External object files for target gtest-example
gtest__example_EXTERNAL_OBJECTS =

src/gtest/gtest-example: src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o
src/gtest/gtest-example: src/gtest/CMakeFiles/gtest-example.dir/build.make
src/gtest/gtest-example: src/gtest/CMakeFiles/gtest-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linlei/workspace/prometheus_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable gtest-example"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/gtest/CMakeFiles/gtest-example.dir/build: src/gtest/gtest-example

.PHONY : src/gtest/CMakeFiles/gtest-example.dir/build

src/gtest/CMakeFiles/gtest-example.dir/requires: src/gtest/CMakeFiles/gtest-example.dir/gtestExample.cpp.o.requires

.PHONY : src/gtest/CMakeFiles/gtest-example.dir/requires

src/gtest/CMakeFiles/gtest-example.dir/clean:
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest-example.dir/cmake_clean.cmake
.PHONY : src/gtest/CMakeFiles/gtest-example.dir/clean

src/gtest/CMakeFiles/gtest-example.dir/depend:
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linlei/workspace/prometheus_cpp /home/linlei/workspace/prometheus_cpp/src/gtest /home/linlei/workspace/prometheus_cpp/cmake-build-debug /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/gtest /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/gtest/CMakeFiles/gtest-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/gtest/CMakeFiles/gtest-example.dir/depend
