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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jamesd/Developer/MPU9150

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jamesd/Developer/MPU9150/build

# Include any dependencies generated for this target.
include CMakeFiles/MPU9050.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MPU9050.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MPU9050.dir/flags.make

CMakeFiles/MPU9050.dir/MPU6050.cpp.o: CMakeFiles/MPU9050.dir/flags.make
CMakeFiles/MPU9050.dir/MPU6050.cpp.o: ../MPU6050.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jamesd/Developer/MPU9150/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MPU9050.dir/MPU6050.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MPU9050.dir/MPU6050.cpp.o -c /home/jamesd/Developer/MPU9150/MPU6050.cpp

CMakeFiles/MPU9050.dir/MPU6050.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MPU9050.dir/MPU6050.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jamesd/Developer/MPU9150/MPU6050.cpp > CMakeFiles/MPU9050.dir/MPU6050.cpp.i

CMakeFiles/MPU9050.dir/MPU6050.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MPU9050.dir/MPU6050.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jamesd/Developer/MPU9150/MPU6050.cpp -o CMakeFiles/MPU9050.dir/MPU6050.cpp.s

CMakeFiles/MPU9050.dir/MPU6050.cpp.o.requires:
.PHONY : CMakeFiles/MPU9050.dir/MPU6050.cpp.o.requires

CMakeFiles/MPU9050.dir/MPU6050.cpp.o.provides: CMakeFiles/MPU9050.dir/MPU6050.cpp.o.requires
	$(MAKE) -f CMakeFiles/MPU9050.dir/build.make CMakeFiles/MPU9050.dir/MPU6050.cpp.o.provides.build
.PHONY : CMakeFiles/MPU9050.dir/MPU6050.cpp.o.provides

CMakeFiles/MPU9050.dir/MPU6050.cpp.o.provides.build: CMakeFiles/MPU9050.dir/MPU6050.cpp.o

CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o: CMakeFiles/MPU9050.dir/flags.make
CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o: /home/jamesd/Developer/I2Cdev/I2Cdev.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jamesd/Developer/MPU9150/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o -c /home/jamesd/Developer/I2Cdev/I2Cdev.cpp

CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jamesd/Developer/I2Cdev/I2Cdev.cpp > CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.i

CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jamesd/Developer/I2Cdev/I2Cdev.cpp -o CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.s

CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.requires:
.PHONY : CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.requires

CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.provides: CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.requires
	$(MAKE) -f CMakeFiles/MPU9050.dir/build.make CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.provides.build
.PHONY : CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.provides

CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.provides.build: CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o

# Object files for target MPU9050
MPU9050_OBJECTS = \
"CMakeFiles/MPU9050.dir/MPU6050.cpp.o" \
"CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o"

# External object files for target MPU9050
MPU9050_EXTERNAL_OBJECTS =

libMPU9050.a: CMakeFiles/MPU9050.dir/MPU6050.cpp.o
libMPU9050.a: CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o
libMPU9050.a: CMakeFiles/MPU9050.dir/build.make
libMPU9050.a: CMakeFiles/MPU9050.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libMPU9050.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MPU9050.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MPU9050.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MPU9050.dir/build: libMPU9050.a
.PHONY : CMakeFiles/MPU9050.dir/build

CMakeFiles/MPU9050.dir/requires: CMakeFiles/MPU9050.dir/MPU6050.cpp.o.requires
CMakeFiles/MPU9050.dir/requires: CMakeFiles/MPU9050.dir/home/jamesd/Developer/I2Cdev/I2Cdev.cpp.o.requires
.PHONY : CMakeFiles/MPU9050.dir/requires

CMakeFiles/MPU9050.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MPU9050.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MPU9050.dir/clean

CMakeFiles/MPU9050.dir/depend:
	cd /home/jamesd/Developer/MPU9150/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jamesd/Developer/MPU9150 /home/jamesd/Developer/MPU9150 /home/jamesd/Developer/MPU9150/build /home/jamesd/Developer/MPU9150/build /home/jamesd/Developer/MPU9150/build/CMakeFiles/MPU9050.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MPU9050.dir/depend

