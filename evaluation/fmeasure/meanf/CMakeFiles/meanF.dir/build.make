# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tangning/fmeasure/meanf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tangning/fmeasure/meanf

# Include any dependencies generated for this target.
include CMakeFiles/meanF.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/meanF.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/meanF.dir/flags.make

CMakeFiles/meanF.dir/main.cpp.o: CMakeFiles/meanF.dir/flags.make
CMakeFiles/meanF.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tangning/fmeasure/meanf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/meanF.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/meanF.dir/main.cpp.o -c /Users/tangning/fmeasure/meanf/main.cpp

CMakeFiles/meanF.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/meanF.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tangning/fmeasure/meanf/main.cpp > CMakeFiles/meanF.dir/main.cpp.i

CMakeFiles/meanF.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/meanF.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tangning/fmeasure/meanf/main.cpp -o CMakeFiles/meanF.dir/main.cpp.s

CMakeFiles/meanF.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/meanF.dir/main.cpp.o.requires

CMakeFiles/meanF.dir/main.cpp.o.provides: CMakeFiles/meanF.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/meanF.dir/build.make CMakeFiles/meanF.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/meanF.dir/main.cpp.o.provides

CMakeFiles/meanF.dir/main.cpp.o.provides.build: CMakeFiles/meanF.dir/main.cpp.o


# Object files for target meanF
meanF_OBJECTS = \
"CMakeFiles/meanF.dir/main.cpp.o"

# External object files for target meanF
meanF_EXTERNAL_OBJECTS =

meanF: CMakeFiles/meanF.dir/main.cpp.o
meanF: CMakeFiles/meanF.dir/build.make
meanF: /usr/local/lib/libopencv_videostab.3.1.0.dylib
meanF: /usr/local/lib/libopencv_superres.3.1.0.dylib
meanF: /usr/local/lib/libopencv_stitching.3.1.0.dylib
meanF: /usr/local/lib/libopencv_shape.3.1.0.dylib
meanF: /usr/local/lib/libopencv_photo.3.1.0.dylib
meanF: /usr/local/lib/libopencv_objdetect.3.1.0.dylib
meanF: /usr/local/lib/libopencv_calib3d.3.1.0.dylib
meanF: /usr/local/lib/libopencv_features2d.3.1.0.dylib
meanF: /usr/local/lib/libopencv_ml.3.1.0.dylib
meanF: /usr/local/lib/libopencv_highgui.3.1.0.dylib
meanF: /usr/local/lib/libopencv_videoio.3.1.0.dylib
meanF: /usr/local/lib/libopencv_imgcodecs.3.1.0.dylib
meanF: /usr/local/lib/libopencv_flann.3.1.0.dylib
meanF: /usr/local/lib/libopencv_video.3.1.0.dylib
meanF: /usr/local/lib/libopencv_imgproc.3.1.0.dylib
meanF: /usr/local/lib/libopencv_core.3.1.0.dylib
meanF: CMakeFiles/meanF.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tangning/fmeasure/meanf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable meanF"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/meanF.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/meanF.dir/build: meanF

.PHONY : CMakeFiles/meanF.dir/build

CMakeFiles/meanF.dir/requires: CMakeFiles/meanF.dir/main.cpp.o.requires

.PHONY : CMakeFiles/meanF.dir/requires

CMakeFiles/meanF.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/meanF.dir/cmake_clean.cmake
.PHONY : CMakeFiles/meanF.dir/clean

CMakeFiles/meanF.dir/depend:
	cd /Users/tangning/fmeasure/meanf && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tangning/fmeasure/meanf /Users/tangning/fmeasure/meanf /Users/tangning/fmeasure/meanf /Users/tangning/fmeasure/meanf /Users/tangning/fmeasure/meanf/CMakeFiles/meanF.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/meanF.dir/depend

