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
CMAKE_SOURCE_DIR = /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Triunghiuri.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Triunghiuri.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Triunghiuri.dir/flags.make

CMakeFiles/Triunghiuri.dir/main.cpp.o: CMakeFiles/Triunghiuri.dir/flags.make
CMakeFiles/Triunghiuri.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Triunghiuri.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Triunghiuri.dir/main.cpp.o -c /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/main.cpp

CMakeFiles/Triunghiuri.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Triunghiuri.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/main.cpp > CMakeFiles/Triunghiuri.dir/main.cpp.i

CMakeFiles/Triunghiuri.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Triunghiuri.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/main.cpp -o CMakeFiles/Triunghiuri.dir/main.cpp.s

# Object files for target Triunghiuri
Triunghiuri_OBJECTS = \
"CMakeFiles/Triunghiuri.dir/main.cpp.o"

# External object files for target Triunghiuri
Triunghiuri_EXTERNAL_OBJECTS =

Triunghiuri: CMakeFiles/Triunghiuri.dir/main.cpp.o
Triunghiuri: CMakeFiles/Triunghiuri.dir/build.make
Triunghiuri: CMakeFiles/Triunghiuri.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Triunghiuri"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Triunghiuri.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Triunghiuri.dir/build: Triunghiuri

.PHONY : CMakeFiles/Triunghiuri.dir/build

CMakeFiles/Triunghiuri.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Triunghiuri.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Triunghiuri.dir/clean

CMakeFiles/Triunghiuri.dir/depend:
	cd /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/cmake-build-debug /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/cmake-build-debug /home/andrei/CLionProjects/itfest-algo-2018/Triunghiuri/cmake-build-debug/CMakeFiles/Triunghiuri.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Triunghiuri.dir/depend
