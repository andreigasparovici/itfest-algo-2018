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
CMAKE_COMMAND = /snap/clion/44/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/44/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/solcanmihai/Desktop/ture

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/solcanmihai/Desktop/ture/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ture.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ture.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ture.dir/flags.make

CMakeFiles/ture.dir/main.cpp.o: CMakeFiles/ture.dir/flags.make
CMakeFiles/ture.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/solcanmihai/Desktop/ture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ture.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ture.dir/main.cpp.o -c /home/solcanmihai/Desktop/ture/main.cpp

CMakeFiles/ture.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ture.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/solcanmihai/Desktop/ture/main.cpp > CMakeFiles/ture.dir/main.cpp.i

CMakeFiles/ture.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ture.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/solcanmihai/Desktop/ture/main.cpp -o CMakeFiles/ture.dir/main.cpp.s

# Object files for target ture
ture_OBJECTS = \
"CMakeFiles/ture.dir/main.cpp.o"

# External object files for target ture
ture_EXTERNAL_OBJECTS =

ture: CMakeFiles/ture.dir/main.cpp.o
ture: CMakeFiles/ture.dir/build.make
ture: CMakeFiles/ture.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/solcanmihai/Desktop/ture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ture"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ture.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ture.dir/build: ture

.PHONY : CMakeFiles/ture.dir/build

CMakeFiles/ture.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ture.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ture.dir/clean

CMakeFiles/ture.dir/depend:
	cd /home/solcanmihai/Desktop/ture/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/solcanmihai/Desktop/ture /home/solcanmihai/Desktop/ture /home/solcanmihai/Desktop/ture/cmake-build-debug /home/solcanmihai/Desktop/ture/cmake-build-debug /home/solcanmihai/Desktop/ture/cmake-build-debug/CMakeFiles/ture.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ture.dir/depend

