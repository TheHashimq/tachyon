# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hashimq/workspace/cpp/helium

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hashimq/workspace/cpp/helium/build

# Include any dependencies generated for this target.
include CMakeFiles/he.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/he.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/he.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/he.dir/flags.make

CMakeFiles/he.dir/src/main.cpp.o: CMakeFiles/he.dir/flags.make
CMakeFiles/he.dir/src/main.cpp.o: /home/hashimq/workspace/cpp/helium/src/main.cpp
CMakeFiles/he.dir/src/main.cpp.o: CMakeFiles/he.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hashimq/workspace/cpp/helium/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/he.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/he.dir/src/main.cpp.o -MF CMakeFiles/he.dir/src/main.cpp.o.d -o CMakeFiles/he.dir/src/main.cpp.o -c /home/hashimq/workspace/cpp/helium/src/main.cpp

CMakeFiles/he.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/he.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hashimq/workspace/cpp/helium/src/main.cpp > CMakeFiles/he.dir/src/main.cpp.i

CMakeFiles/he.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/he.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hashimq/workspace/cpp/helium/src/main.cpp -o CMakeFiles/he.dir/src/main.cpp.s

# Object files for target he
he_OBJECTS = \
"CMakeFiles/he.dir/src/main.cpp.o"

# External object files for target he
he_EXTERNAL_OBJECTS =

he: CMakeFiles/he.dir/src/main.cpp.o
he: CMakeFiles/he.dir/build.make
he: CMakeFiles/he.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hashimq/workspace/cpp/helium/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable he"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/he.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/he.dir/build: he
.PHONY : CMakeFiles/he.dir/build

CMakeFiles/he.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/he.dir/cmake_clean.cmake
.PHONY : CMakeFiles/he.dir/clean

CMakeFiles/he.dir/depend:
	cd /home/hashimq/workspace/cpp/helium/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hashimq/workspace/cpp/helium /home/hashimq/workspace/cpp/helium /home/hashimq/workspace/cpp/helium/build /home/hashimq/workspace/cpp/helium/build /home/hashimq/workspace/cpp/helium/build/CMakeFiles/he.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/he.dir/depend

