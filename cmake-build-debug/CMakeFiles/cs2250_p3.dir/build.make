# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\chris\CLionProjects\cs2250_p3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\chris\CLionProjects\cs2250_p3\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cs2250_p3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cs2250_p3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cs2250_p3.dir/flags.make

CMakeFiles/cs2250_p3.dir/main.cpp.obj: CMakeFiles/cs2250_p3.dir/flags.make
CMakeFiles/cs2250_p3.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\chris\CLionProjects\cs2250_p3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cs2250_p3.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cs2250_p3.dir\main.cpp.obj -c C:\Users\chris\CLionProjects\cs2250_p3\main.cpp

CMakeFiles/cs2250_p3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cs2250_p3.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\chris\CLionProjects\cs2250_p3\main.cpp > CMakeFiles\cs2250_p3.dir\main.cpp.i

CMakeFiles/cs2250_p3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cs2250_p3.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\chris\CLionProjects\cs2250_p3\main.cpp -o CMakeFiles\cs2250_p3.dir\main.cpp.s

CMakeFiles/cs2250_p3.dir/Horse.cpp.obj: CMakeFiles/cs2250_p3.dir/flags.make
CMakeFiles/cs2250_p3.dir/Horse.cpp.obj: ../Horse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\chris\CLionProjects\cs2250_p3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cs2250_p3.dir/Horse.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cs2250_p3.dir\Horse.cpp.obj -c C:\Users\chris\CLionProjects\cs2250_p3\Horse.cpp

CMakeFiles/cs2250_p3.dir/Horse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cs2250_p3.dir/Horse.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\chris\CLionProjects\cs2250_p3\Horse.cpp > CMakeFiles\cs2250_p3.dir\Horse.cpp.i

CMakeFiles/cs2250_p3.dir/Horse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cs2250_p3.dir/Horse.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\chris\CLionProjects\cs2250_p3\Horse.cpp -o CMakeFiles\cs2250_p3.dir\Horse.cpp.s

# Object files for target cs2250_p3
cs2250_p3_OBJECTS = \
"CMakeFiles/cs2250_p3.dir/main.cpp.obj" \
"CMakeFiles/cs2250_p3.dir/Horse.cpp.obj"

# External object files for target cs2250_p3
cs2250_p3_EXTERNAL_OBJECTS =

cs2250_p3.exe: CMakeFiles/cs2250_p3.dir/main.cpp.obj
cs2250_p3.exe: CMakeFiles/cs2250_p3.dir/Horse.cpp.obj
cs2250_p3.exe: CMakeFiles/cs2250_p3.dir/build.make
cs2250_p3.exe: CMakeFiles/cs2250_p3.dir/linklibs.rsp
cs2250_p3.exe: CMakeFiles/cs2250_p3.dir/objects1.rsp
cs2250_p3.exe: CMakeFiles/cs2250_p3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\chris\CLionProjects\cs2250_p3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable cs2250_p3.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cs2250_p3.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cs2250_p3.dir/build: cs2250_p3.exe

.PHONY : CMakeFiles/cs2250_p3.dir/build

CMakeFiles/cs2250_p3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cs2250_p3.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cs2250_p3.dir/clean

CMakeFiles/cs2250_p3.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\chris\CLionProjects\cs2250_p3 C:\Users\chris\CLionProjects\cs2250_p3 C:\Users\chris\CLionProjects\cs2250_p3\cmake-build-debug C:\Users\chris\CLionProjects\cs2250_p3\cmake-build-debug C:\Users\chris\CLionProjects\cs2250_p3\cmake-build-debug\CMakeFiles\cs2250_p3.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cs2250_p3.dir/depend
