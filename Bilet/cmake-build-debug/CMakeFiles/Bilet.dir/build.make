# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/andrei/Downloads/CLion-2018.2.4/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/andrei/Downloads/CLion-2018.2.4/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andrei/CLionProjects/itfest-algo-2018/Bilet

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrei/CLionProjects/itfest-algo-2018/Bilet/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Bilet.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Bilet.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Bilet.dir/flags.make

CMakeFiles/Bilet.dir/main.cpp.o: CMakeFiles/Bilet.dir/flags.make
CMakeFiles/Bilet.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrei/CLionProjects/itfest-algo-2018/Bilet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Bilet.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Bilet.dir/main.cpp.o -c /home/andrei/CLionProjects/itfest-algo-2018/Bilet/main.cpp

CMakeFiles/Bilet.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Bilet.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrei/CLionProjects/itfest-algo-2018/Bilet/main.cpp > CMakeFiles/Bilet.dir/main.cpp.i

CMakeFiles/Bilet.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Bilet.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrei/CLionProjects/itfest-algo-2018/Bilet/main.cpp -o CMakeFiles/Bilet.dir/main.cpp.s

# Object files for target Bilet
Bilet_OBJECTS = \
"CMakeFiles/Bilet.dir/main.cpp.o"

# External object files for target Bilet
Bilet_EXTERNAL_OBJECTS =

Bilet: CMakeFiles/Bilet.dir/main.cpp.o
Bilet: CMakeFiles/Bilet.dir/build.make
Bilet: CMakeFiles/Bilet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrei/CLionProjects/itfest-algo-2018/Bilet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Bilet"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Bilet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Bilet.dir/build: Bilet

.PHONY : CMakeFiles/Bilet.dir/build

CMakeFiles/Bilet.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Bilet.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Bilet.dir/clean

CMakeFiles/Bilet.dir/depend:
	cd /home/andrei/CLionProjects/itfest-algo-2018/Bilet/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrei/CLionProjects/itfest-algo-2018/Bilet /home/andrei/CLionProjects/itfest-algo-2018/Bilet /home/andrei/CLionProjects/itfest-algo-2018/Bilet/cmake-build-debug /home/andrei/CLionProjects/itfest-algo-2018/Bilet/cmake-build-debug /home/andrei/CLionProjects/itfest-algo-2018/Bilet/cmake-build-debug/CMakeFiles/Bilet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Bilet.dir/depend

