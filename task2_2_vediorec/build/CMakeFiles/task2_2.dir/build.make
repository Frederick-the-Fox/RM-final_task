# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/build

# Include any dependencies generated for this target.
include CMakeFiles/task2_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/task2_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task2_2.dir/flags.make

CMakeFiles/task2_2.dir/src/task2_2.cpp.o: CMakeFiles/task2_2.dir/flags.make
CMakeFiles/task2_2.dir/src/task2_2.cpp.o: ../src/task2_2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/task2_2.dir/src/task2_2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task2_2.dir/src/task2_2.cpp.o -c /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/src/task2_2.cpp

CMakeFiles/task2_2.dir/src/task2_2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task2_2.dir/src/task2_2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/src/task2_2.cpp > CMakeFiles/task2_2.dir/src/task2_2.cpp.i

CMakeFiles/task2_2.dir/src/task2_2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task2_2.dir/src/task2_2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/src/task2_2.cpp -o CMakeFiles/task2_2.dir/src/task2_2.cpp.s

CMakeFiles/task2_2.dir/src/task2_2.cpp.o.requires:

.PHONY : CMakeFiles/task2_2.dir/src/task2_2.cpp.o.requires

CMakeFiles/task2_2.dir/src/task2_2.cpp.o.provides: CMakeFiles/task2_2.dir/src/task2_2.cpp.o.requires
	$(MAKE) -f CMakeFiles/task2_2.dir/build.make CMakeFiles/task2_2.dir/src/task2_2.cpp.o.provides.build
.PHONY : CMakeFiles/task2_2.dir/src/task2_2.cpp.o.provides

CMakeFiles/task2_2.dir/src/task2_2.cpp.o.provides.build: CMakeFiles/task2_2.dir/src/task2_2.cpp.o


# Object files for target task2_2
task2_2_OBJECTS = \
"CMakeFiles/task2_2.dir/src/task2_2.cpp.o"

# External object files for target task2_2
task2_2_EXTERNAL_OBJECTS =

../bin/task2_2: CMakeFiles/task2_2.dir/src/task2_2.cpp.o
../bin/task2_2: CMakeFiles/task2_2.dir/build.make
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
../bin/task2_2: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
../bin/task2_2: CMakeFiles/task2_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/task2_2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task2_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task2_2.dir/build: ../bin/task2_2

.PHONY : CMakeFiles/task2_2.dir/build

CMakeFiles/task2_2.dir/requires: CMakeFiles/task2_2.dir/src/task2_2.cpp.o.requires

.PHONY : CMakeFiles/task2_2.dir/requires

CMakeFiles/task2_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/task2_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/task2_2.dir/clean

CMakeFiles/task2_2.dir/depend:
	cd /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/build /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/build /home/fredy/Desktop/RM考核/final_task/task2_2_vediorec/build/CMakeFiles/task2_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/task2_2.dir/depend
