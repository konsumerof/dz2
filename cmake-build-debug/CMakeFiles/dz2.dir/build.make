# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\79146\CLionProjects\dz2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\79146\CLionProjects\dz2\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/dz2.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/dz2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dz2.dir/flags.make

CMakeFiles/dz2.dir/main.cpp.obj: CMakeFiles/dz2.dir/flags.make
CMakeFiles/dz2.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\79146\CLionProjects\dz2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dz2.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\dz2.dir\main.cpp.obj -c C:\Users\79146\CLionProjects\dz2\main.cpp

CMakeFiles/dz2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dz2.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\79146\CLionProjects\dz2\main.cpp > CMakeFiles\dz2.dir\main.cpp.i

CMakeFiles/dz2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dz2.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\79146\CLionProjects\dz2\main.cpp -o CMakeFiles\dz2.dir\main.cpp.s

# Object files for target dz2
dz2_OBJECTS = \
"CMakeFiles/dz2.dir/main.cpp.obj"

# External object files for target dz2
dz2_EXTERNAL_OBJECTS =

dz2.exe: CMakeFiles/dz2.dir/main.cpp.obj
dz2.exe: CMakeFiles/dz2.dir/build.make
dz2.exe: CMakeFiles/dz2.dir/linklibs.rsp
dz2.exe: CMakeFiles/dz2.dir/objects1.rsp
dz2.exe: CMakeFiles/dz2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\79146\CLionProjects\dz2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dz2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\dz2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dz2.dir/build: dz2.exe
.PHONY : CMakeFiles/dz2.dir/build

CMakeFiles/dz2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\dz2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/dz2.dir/clean

CMakeFiles/dz2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\79146\CLionProjects\dz2 C:\Users\79146\CLionProjects\dz2 C:\Users\79146\CLionProjects\dz2\cmake-build-debug C:\Users\79146\CLionProjects\dz2\cmake-build-debug C:\Users\79146\CLionProjects\dz2\cmake-build-debug\CMakeFiles\dz2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dz2.dir/depend

