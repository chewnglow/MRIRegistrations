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
CMAKE_SOURCE_DIR = /home/sugon/TranslationTransform

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sugon/TranslationTransform/build

# Include any dependencies generated for this target.
include CMakeFiles/TranslationTransform.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TranslationTransform.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TranslationTransform.dir/flags.make

CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o: CMakeFiles/TranslationTransform.dir/flags.make
CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o: ../TranslationTransform.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sugon/TranslationTransform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o -c /home/sugon/TranslationTransform/TranslationTransform.cxx

CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sugon/TranslationTransform/TranslationTransform.cxx > CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.i

CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sugon/TranslationTransform/TranslationTransform.cxx -o CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.s

CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.requires:

.PHONY : CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.requires

CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.provides: CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.requires
	$(MAKE) -f CMakeFiles/TranslationTransform.dir/build.make CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.provides.build
.PHONY : CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.provides

CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.provides.build: CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o


# Object files for target TranslationTransform
TranslationTransform_OBJECTS = \
"CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o"

# External object files for target TranslationTransform
TranslationTransform_EXTERNAL_OBJECTS =

TranslationTransform: CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o
TranslationTransform: CMakeFiles/TranslationTransform.dir/build.make
TranslationTransform: /usr/local/lib/libitkdouble-conversion-4.13.a
TranslationTransform: /usr/local/lib/libitksys-4.13.a
TranslationTransform: /usr/local/lib/libitkvnl_algo-4.13.a
TranslationTransform: /usr/local/lib/libitkvnl-4.13.a
TranslationTransform: /usr/local/lib/libitkv3p_netlib-4.13.a
TranslationTransform: /usr/local/lib/libitknetlib-4.13.a
TranslationTransform: /usr/local/lib/libitkvcl-4.13.a
TranslationTransform: /usr/local/lib/libITKCommon-4.13.a
TranslationTransform: /usr/local/lib/libitkNetlibSlatec-4.13.a
TranslationTransform: /usr/local/lib/libITKStatistics-4.13.a
TranslationTransform: /usr/local/lib/libITKTransform-4.13.a
TranslationTransform: /usr/local/lib/libITKLabelMap-4.13.a
TranslationTransform: /usr/local/lib/libITKMesh-4.13.a
TranslationTransform: /usr/local/lib/libitkzlib-4.13.a
TranslationTransform: /usr/local/lib/libITKMetaIO-4.13.a
TranslationTransform: /usr/local/lib/libITKSpatialObjects-4.13.a
TranslationTransform: /usr/local/lib/libITKPath-4.13.a
TranslationTransform: /usr/local/lib/libITKQuadEdgeMesh-4.13.a
TranslationTransform: /usr/local/lib/libITKIOImageBase-4.13.a
TranslationTransform: /usr/local/lib/libITKOptimizers-4.13.a
TranslationTransform: /usr/local/lib/libITKPolynomials-4.13.a
TranslationTransform: /usr/local/lib/libITKBiasCorrection-4.13.a
TranslationTransform: /usr/local/lib/libITKBioCell-4.13.a
TranslationTransform: /usr/local/lib/libITKDICOMParser-4.13.a
TranslationTransform: /usr/local/lib/libITKEXPAT-4.13.a
TranslationTransform: /usr/local/lib/libITKIOXML-4.13.a
TranslationTransform: /usr/local/lib/libITKIOSpatialObjects-4.13.a
TranslationTransform: /usr/local/lib/libITKFEM-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmDICT-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmMSFF-4.13.a
TranslationTransform: /usr/local/lib/libITKznz-4.13.a
TranslationTransform: /usr/local/lib/libITKniftiio-4.13.a
TranslationTransform: /usr/local/lib/libITKgiftiio-4.13.a
TranslationTransform: /usr/local/lib/libitkhdf5_cpp.a
TranslationTransform: /usr/local/lib/libitkhdf5.a
TranslationTransform: /usr/local/lib/libITKIOBMP-4.13.a
TranslationTransform: /usr/local/lib/libITKIOBioRad-4.13.a
TranslationTransform: /usr/local/lib/libITKIOBruker-4.13.a
TranslationTransform: /usr/local/lib/libITKIOCSV-4.13.a
TranslationTransform: /usr/local/lib/libITKIOGDCM-4.13.a
TranslationTransform: /usr/local/lib/libITKIOIPL-4.13.a
TranslationTransform: /usr/local/lib/libITKIOGE-4.13.a
TranslationTransform: /usr/local/lib/libITKIOGIPL-4.13.a
TranslationTransform: /usr/local/lib/libITKIOHDF5-4.13.a
TranslationTransform: /usr/local/lib/libitkjpeg-4.13.a
TranslationTransform: /usr/local/lib/libITKIOJPEG-4.13.a
TranslationTransform: /usr/local/lib/libitktiff-4.13.a
TranslationTransform: /usr/local/lib/libITKIOTIFF-4.13.a
TranslationTransform: /usr/local/lib/libITKIOLSM-4.13.a
TranslationTransform: /usr/local/lib/libitkminc2-4.13.a
TranslationTransform: /usr/local/lib/libITKIOMINC-4.13.a
TranslationTransform: /usr/local/lib/libITKIOMRC-4.13.a
TranslationTransform: /usr/local/lib/libITKIOMesh-4.13.a
TranslationTransform: /usr/local/lib/libITKIOMeta-4.13.a
TranslationTransform: /usr/local/lib/libITKIONIFTI-4.13.a
TranslationTransform: /usr/local/lib/libITKNrrdIO-4.13.a
TranslationTransform: /usr/local/lib/libITKIONRRD-4.13.a
TranslationTransform: /usr/local/lib/libitkpng-4.13.a
TranslationTransform: /usr/local/lib/libITKIOPNG-4.13.a
TranslationTransform: /usr/local/lib/libITKIOSiemens-4.13.a
TranslationTransform: /usr/local/lib/libITKIOStimulate-4.13.a
TranslationTransform: /usr/local/lib/libITKTransformFactory-4.13.a
TranslationTransform: /usr/local/lib/libITKIOTransformBase-4.13.a
TranslationTransform: /usr/local/lib/libITKIOTransformHDF5-4.13.a
TranslationTransform: /usr/local/lib/libITKIOTransformInsightLegacy-4.13.a
TranslationTransform: /usr/local/lib/libITKIOTransformMatlab-4.13.a
TranslationTransform: /usr/local/lib/libITKIOVTK-4.13.a
TranslationTransform: /usr/local/lib/libITKKLMRegionGrowing-4.13.a
TranslationTransform: /usr/local/lib/libitklbfgs-4.13.a
TranslationTransform: /usr/local/lib/libITKOptimizersv4-4.13.a
TranslationTransform: /usr/local/lib/libITKVTK-4.13.a
TranslationTransform: /usr/local/lib/libITKVideoCore-4.13.a
TranslationTransform: /usr/local/lib/libITKVideoIO-4.13.a
TranslationTransform: /usr/local/lib/libITKWatersheds-4.13.a
TranslationTransform: /usr/local/lib/libITKIOXML-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmMSFF-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmDICT-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmIOD-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmDSED-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmCommon-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmjpeg8-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmjpeg12-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmjpeg16-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmopenjp2-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmcharls-4.13.a
TranslationTransform: /usr/local/lib/libitkgdcmuuid-4.13.a
TranslationTransform: /usr/local/lib/libITKIOTIFF-4.13.a
TranslationTransform: /usr/local/lib/libitktiff-4.13.a
TranslationTransform: /usr/local/lib/libitkjpeg-4.13.a
TranslationTransform: /usr/local/lib/libitkminc2-4.13.a
TranslationTransform: /usr/local/lib/libITKgiftiio-4.13.a
TranslationTransform: /usr/local/lib/libITKEXPAT-4.13.a
TranslationTransform: /usr/local/lib/libITKMetaIO-4.13.a
TranslationTransform: /usr/local/lib/libITKniftiio-4.13.a
TranslationTransform: /usr/local/lib/libITKznz-4.13.a
TranslationTransform: /usr/local/lib/libITKNrrdIO-4.13.a
TranslationTransform: /usr/local/lib/libitkpng-4.13.a
TranslationTransform: /usr/local/lib/libITKIOIPL-4.13.a
TranslationTransform: /usr/local/lib/libitkhdf5_cpp.a
TranslationTransform: /usr/local/lib/libitkhdf5.a
TranslationTransform: /usr/local/lib/libitkzlib-4.13.a
TranslationTransform: /usr/local/lib/libITKIOTransformBase-4.13.a
TranslationTransform: /usr/local/lib/libITKTransformFactory-4.13.a
TranslationTransform: /usr/local/lib/libITKOptimizers-4.13.a
TranslationTransform: /usr/local/lib/libitklbfgs-4.13.a
TranslationTransform: /usr/local/lib/libITKIOImageBase-4.13.a
TranslationTransform: /usr/local/lib/libITKVideoCore-4.13.a
TranslationTransform: /usr/local/lib/libITKStatistics-4.13.a
TranslationTransform: /usr/local/lib/libitkNetlibSlatec-4.13.a
TranslationTransform: /usr/local/lib/libITKSpatialObjects-4.13.a
TranslationTransform: /usr/local/lib/libITKMesh-4.13.a
TranslationTransform: /usr/local/lib/libITKTransform-4.13.a
TranslationTransform: /usr/local/lib/libITKPath-4.13.a
TranslationTransform: /usr/local/lib/libITKCommon-4.13.a
TranslationTransform: /usr/local/lib/libitkdouble-conversion-4.13.a
TranslationTransform: /usr/local/lib/libitksys-4.13.a
TranslationTransform: /usr/local/lib/libITKVNLInstantiation-4.13.a
TranslationTransform: /usr/local/lib/libitkvnl_algo-4.13.a
TranslationTransform: /usr/local/lib/libitkvnl-4.13.a
TranslationTransform: /usr/local/lib/libitkv3p_netlib-4.13.a
TranslationTransform: /usr/local/lib/libitknetlib-4.13.a
TranslationTransform: /usr/local/lib/libitkvcl-4.13.a
TranslationTransform: CMakeFiles/TranslationTransform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sugon/TranslationTransform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TranslationTransform"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TranslationTransform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TranslationTransform.dir/build: TranslationTransform

.PHONY : CMakeFiles/TranslationTransform.dir/build

CMakeFiles/TranslationTransform.dir/requires: CMakeFiles/TranslationTransform.dir/TranslationTransform.cxx.o.requires

.PHONY : CMakeFiles/TranslationTransform.dir/requires

CMakeFiles/TranslationTransform.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TranslationTransform.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TranslationTransform.dir/clean

CMakeFiles/TranslationTransform.dir/depend:
	cd /home/sugon/TranslationTransform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sugon/TranslationTransform /home/sugon/TranslationTransform /home/sugon/TranslationTransform/build /home/sugon/TranslationTransform/build /home/sugon/TranslationTransform/build/CMakeFiles/TranslationTransform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TranslationTransform.dir/depend

