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
CMAKE_SOURCE_DIR = /home/andrei/CLionProjects/itfest-algo-2018/Tort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrei/CLionProjects/itfest-algo-2018/Tort/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Tort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Tort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tort.dir/flags.make

CMakeFiles/Tort.dir/main.cpp.o: CMakeFiles/Tort.dir/flags.make
CMakeFiles/Tort.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrei/CLionProjects/itfest-algo-2018/Tort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tort.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tort.dir/main.cpp.o -c /home/andrei/CLionProjects/itfest-algo-2018/Tort/main.cpp

CMakeFiles/Tort.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tort.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrei/CLionProjects/itfest-algo-2018/Tort/main.cpp > CMakeFiles/Tort.dir/main.cpp.i

CMakeFiles/Tort.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tort.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrei/CLionProjects/itfest-algo-2018/Tort/main.cpp -o CMakeFiles/Tort.dir/main.cpp.s

# Object files for target Tort
Tort_OBJECTS = \
"CMakeFiles/Tort.dir/main.cpp.o"

# External object files for target Tort
Tort_EXTERNAL_OBJECTS =

Tort: CMakeFiles/Tort.dir/main.cpp.o
Tort: CMakeFiles/Tort.dir/build.make
Tort: CMakeFiles/Tort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrei/CLionProjects/itfest-algo-2018/Tort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Tort"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tort.dir/build: Tort

.PHONY : CMakeFiles/Tort.dir/build

CMakeFiles/Tort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tort.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tort.dir/clean

CMakeFiles/Tort.dir/depend:
	cd /home/andrei/CLionProjects/itfest-algo-2018/Tort/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrei/CLionProjects/itfest-algo-2018/Tort /home/andrei/CLionProjects/itfest-algo-2018/Tort /home/andrei/CLionProjects/itfest-algo-2018/Tort/cmake-build-debug /home/andrei/CLionProjects/itfest-algo-2018/Tort/cmake-build-debug /home/andrei/CLionProjects/itfest-algo-2018/Tort/cmake-build-debug/CMakeFiles/Tort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Tort.dir/depend

