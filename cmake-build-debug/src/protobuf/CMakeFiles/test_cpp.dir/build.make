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
include src/protobuf/CMakeFiles/test_cpp.dir/depend.make

# Include the progress variables for this target.
include src/protobuf/CMakeFiles/test_cpp.dir/progress.make

# Include the compile flags for this target's objects.
include src/protobuf/CMakeFiles/test_cpp.dir/flags.make

src/protobuf/test.pb.h: /usr/local/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/linlei/workspace/prometheus_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running cpp protocol buffer compiler on test.proto"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && /usr/local/bin/protoc --cpp_out /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf -I /home/linlei/workspace/prometheus_cpp/src/protobuf /home/linlei/workspace/prometheus_cpp/src/protobuf/test.proto

src/protobuf/test.pb.cc: src/protobuf/test.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate src/protobuf/test.pb.cc

src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o: src/protobuf/CMakeFiles/test_cpp.dir/flags.make
src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o: ../src/protobuf/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linlei/workspace/prometheus_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_cpp.dir/test.cpp.o -c /home/linlei/workspace/prometheus_cpp/src/protobuf/test.cpp

src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_cpp.dir/test.cpp.i"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linlei/workspace/prometheus_cpp/src/protobuf/test.cpp > CMakeFiles/test_cpp.dir/test.cpp.i

src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_cpp.dir/test.cpp.s"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linlei/workspace/prometheus_cpp/src/protobuf/test.cpp -o CMakeFiles/test_cpp.dir/test.cpp.s

src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.requires:

.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.requires

src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.provides: src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.requires
	$(MAKE) -f src/protobuf/CMakeFiles/test_cpp.dir/build.make src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.provides.build
.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.provides

src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.provides.build: src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o


src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o: src/protobuf/CMakeFiles/test_cpp.dir/flags.make
src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o: src/protobuf/test.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linlei/workspace/prometheus_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_cpp.dir/test.pb.cc.o -c /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf/test.pb.cc

src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_cpp.dir/test.pb.cc.i"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf/test.pb.cc > CMakeFiles/test_cpp.dir/test.pb.cc.i

src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_cpp.dir/test.pb.cc.s"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf/test.pb.cc -o CMakeFiles/test_cpp.dir/test.pb.cc.s

src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.requires:

.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.requires

src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.provides: src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.requires
	$(MAKE) -f src/protobuf/CMakeFiles/test_cpp.dir/build.make src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.provides.build
.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.provides

src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.provides.build: src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o


# Object files for target test_cpp
test_cpp_OBJECTS = \
"CMakeFiles/test_cpp.dir/test.cpp.o" \
"CMakeFiles/test_cpp.dir/test.pb.cc.o"

# External object files for target test_cpp
test_cpp_EXTERNAL_OBJECTS =

src/protobuf/test_cpp: src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o
src/protobuf/test_cpp: src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o
src/protobuf/test_cpp: src/protobuf/CMakeFiles/test_cpp.dir/build.make
src/protobuf/test_cpp: /usr/local/lib/libprotobuf.a
src/protobuf/test_cpp: src/protobuf/CMakeFiles/test_cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linlei/workspace/prometheus_cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable test_cpp"
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/protobuf/CMakeFiles/test_cpp.dir/build: src/protobuf/test_cpp

.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/build

src/protobuf/CMakeFiles/test_cpp.dir/requires: src/protobuf/CMakeFiles/test_cpp.dir/test.cpp.o.requires
src/protobuf/CMakeFiles/test_cpp.dir/requires: src/protobuf/CMakeFiles/test_cpp.dir/test.pb.cc.o.requires

.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/requires

src/protobuf/CMakeFiles/test_cpp.dir/clean:
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf && $(CMAKE_COMMAND) -P CMakeFiles/test_cpp.dir/cmake_clean.cmake
.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/clean

src/protobuf/CMakeFiles/test_cpp.dir/depend: src/protobuf/test.pb.h
src/protobuf/CMakeFiles/test_cpp.dir/depend: src/protobuf/test.pb.cc
	cd /home/linlei/workspace/prometheus_cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linlei/workspace/prometheus_cpp /home/linlei/workspace/prometheus_cpp/src/protobuf /home/linlei/workspace/prometheus_cpp/cmake-build-debug /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf /home/linlei/workspace/prometheus_cpp/cmake-build-debug/src/protobuf/CMakeFiles/test_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/protobuf/CMakeFiles/test_cpp.dir/depend

