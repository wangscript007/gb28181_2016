# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xhw/gb28181_2016

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xhw/gb28181_2016/debug

# Include any dependencies generated for this target.
include CMakeFiles/gb28181.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gb28181.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gb28181.dir/flags.make

CMakeFiles/gb28181.dir/src/algorithm.cpp.o: CMakeFiles/gb28181.dir/flags.make
CMakeFiles/gb28181.dir/src/algorithm.cpp.o: ../src/algorithm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xhw/gb28181_2016/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gb28181.dir/src/algorithm.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gb28181.dir/src/algorithm.cpp.o -c /home/xhw/gb28181_2016/src/algorithm.cpp

CMakeFiles/gb28181.dir/src/algorithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gb28181.dir/src/algorithm.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xhw/gb28181_2016/src/algorithm.cpp > CMakeFiles/gb28181.dir/src/algorithm.cpp.i

CMakeFiles/gb28181.dir/src/algorithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gb28181.dir/src/algorithm.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xhw/gb28181_2016/src/algorithm.cpp -o CMakeFiles/gb28181.dir/src/algorithm.cpp.s

CMakeFiles/gb28181.dir/src/algorithm.cpp.o.requires:

.PHONY : CMakeFiles/gb28181.dir/src/algorithm.cpp.o.requires

CMakeFiles/gb28181.dir/src/algorithm.cpp.o.provides: CMakeFiles/gb28181.dir/src/algorithm.cpp.o.requires
	$(MAKE) -f CMakeFiles/gb28181.dir/build.make CMakeFiles/gb28181.dir/src/algorithm.cpp.o.provides.build
.PHONY : CMakeFiles/gb28181.dir/src/algorithm.cpp.o.provides

CMakeFiles/gb28181.dir/src/algorithm.cpp.o.provides.build: CMakeFiles/gb28181.dir/src/algorithm.cpp.o


CMakeFiles/gb28181.dir/src/gb28181.cpp.o: CMakeFiles/gb28181.dir/flags.make
CMakeFiles/gb28181.dir/src/gb28181.cpp.o: ../src/gb28181.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xhw/gb28181_2016/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gb28181.dir/src/gb28181.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gb28181.dir/src/gb28181.cpp.o -c /home/xhw/gb28181_2016/src/gb28181.cpp

CMakeFiles/gb28181.dir/src/gb28181.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gb28181.dir/src/gb28181.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xhw/gb28181_2016/src/gb28181.cpp > CMakeFiles/gb28181.dir/src/gb28181.cpp.i

CMakeFiles/gb28181.dir/src/gb28181.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gb28181.dir/src/gb28181.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xhw/gb28181_2016/src/gb28181.cpp -o CMakeFiles/gb28181.dir/src/gb28181.cpp.s

CMakeFiles/gb28181.dir/src/gb28181.cpp.o.requires:

.PHONY : CMakeFiles/gb28181.dir/src/gb28181.cpp.o.requires

CMakeFiles/gb28181.dir/src/gb28181.cpp.o.provides: CMakeFiles/gb28181.dir/src/gb28181.cpp.o.requires
	$(MAKE) -f CMakeFiles/gb28181.dir/build.make CMakeFiles/gb28181.dir/src/gb28181.cpp.o.provides.build
.PHONY : CMakeFiles/gb28181.dir/src/gb28181.cpp.o.provides

CMakeFiles/gb28181.dir/src/gb28181.cpp.o.provides.build: CMakeFiles/gb28181.dir/src/gb28181.cpp.o


CMakeFiles/gb28181.dir/src/osip_md5.cpp.o: CMakeFiles/gb28181.dir/flags.make
CMakeFiles/gb28181.dir/src/osip_md5.cpp.o: ../src/osip_md5.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xhw/gb28181_2016/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gb28181.dir/src/osip_md5.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gb28181.dir/src/osip_md5.cpp.o -c /home/xhw/gb28181_2016/src/osip_md5.cpp

CMakeFiles/gb28181.dir/src/osip_md5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gb28181.dir/src/osip_md5.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xhw/gb28181_2016/src/osip_md5.cpp > CMakeFiles/gb28181.dir/src/osip_md5.cpp.i

CMakeFiles/gb28181.dir/src/osip_md5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gb28181.dir/src/osip_md5.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xhw/gb28181_2016/src/osip_md5.cpp -o CMakeFiles/gb28181.dir/src/osip_md5.cpp.s

CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.requires:

.PHONY : CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.requires

CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.provides: CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.requires
	$(MAKE) -f CMakeFiles/gb28181.dir/build.make CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.provides.build
.PHONY : CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.provides

CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.provides.build: CMakeFiles/gb28181.dir/src/osip_md5.cpp.o


# Object files for target gb28181
gb28181_OBJECTS = \
"CMakeFiles/gb28181.dir/src/algorithm.cpp.o" \
"CMakeFiles/gb28181.dir/src/gb28181.cpp.o" \
"CMakeFiles/gb28181.dir/src/osip_md5.cpp.o"

# External object files for target gb28181
gb28181_EXTERNAL_OBJECTS =

../bin/gb28181: CMakeFiles/gb28181.dir/src/algorithm.cpp.o
../bin/gb28181: CMakeFiles/gb28181.dir/src/gb28181.cpp.o
../bin/gb28181: CMakeFiles/gb28181.dir/src/osip_md5.cpp.o
../bin/gb28181: CMakeFiles/gb28181.dir/build.make
../bin/gb28181: CMakeFiles/gb28181.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xhw/gb28181_2016/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../bin/gb28181"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gb28181.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gb28181.dir/build: ../bin/gb28181

.PHONY : CMakeFiles/gb28181.dir/build

CMakeFiles/gb28181.dir/requires: CMakeFiles/gb28181.dir/src/algorithm.cpp.o.requires
CMakeFiles/gb28181.dir/requires: CMakeFiles/gb28181.dir/src/gb28181.cpp.o.requires
CMakeFiles/gb28181.dir/requires: CMakeFiles/gb28181.dir/src/osip_md5.cpp.o.requires

.PHONY : CMakeFiles/gb28181.dir/requires

CMakeFiles/gb28181.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gb28181.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gb28181.dir/clean

CMakeFiles/gb28181.dir/depend:
	cd /home/xhw/gb28181_2016/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xhw/gb28181_2016 /home/xhw/gb28181_2016 /home/xhw/gb28181_2016/debug /home/xhw/gb28181_2016/debug /home/xhw/gb28181_2016/debug/CMakeFiles/gb28181.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gb28181.dir/depend
