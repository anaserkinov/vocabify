# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/anaskhan/proj/vocabify

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anaskhan/proj/vocabify/build

# Include any dependencies generated for this target.
include CMakeFiles/Vocabify.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Vocabify.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Vocabify.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Vocabify.dir/flags.make

CMakeFiles/Vocabify.dir/src/Main.cpp.o: CMakeFiles/Vocabify.dir/flags.make
CMakeFiles/Vocabify.dir/src/Main.cpp.o: ../src/Main.cpp
CMakeFiles/Vocabify.dir/src/Main.cpp.o: CMakeFiles/Vocabify.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anaskhan/proj/vocabify/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Vocabify.dir/src/Main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Vocabify.dir/src/Main.cpp.o -MF CMakeFiles/Vocabify.dir/src/Main.cpp.o.d -o CMakeFiles/Vocabify.dir/src/Main.cpp.o -c /home/anaskhan/proj/vocabify/src/Main.cpp

CMakeFiles/Vocabify.dir/src/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Vocabify.dir/src/Main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anaskhan/proj/vocabify/src/Main.cpp > CMakeFiles/Vocabify.dir/src/Main.cpp.i

CMakeFiles/Vocabify.dir/src/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Vocabify.dir/src/Main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anaskhan/proj/vocabify/src/Main.cpp -o CMakeFiles/Vocabify.dir/src/Main.cpp.s

# Object files for target Vocabify
Vocabify_OBJECTS = \
"CMakeFiles/Vocabify.dir/src/Main.cpp.o"

# External object files for target Vocabify
Vocabify_EXTERNAL_OBJECTS =

Vocabify: CMakeFiles/Vocabify.dir/src/Main.cpp.o
Vocabify: CMakeFiles/Vocabify.dir/build.make
Vocabify: tgbot_fragment/libtgbot_fragment.a
Vocabify: tgbot_fragment/sqlite_cpp/libsqlite_cpp.a
Vocabify: tgbot_fragment/tgbot-cpp/libTgBot.a
Vocabify: /usr/local/lib/libz.so
Vocabify: /usr/lib/x86_64-linux-gnu/libssl.so
Vocabify: /usr/lib/x86_64-linux-gnu/libcrypto.so
Vocabify: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.74.0
Vocabify: /usr/local/lib/libcurl.so
Vocabify: CMakeFiles/Vocabify.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anaskhan/proj/vocabify/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Vocabify"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Vocabify.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Vocabify.dir/build: Vocabify
.PHONY : CMakeFiles/Vocabify.dir/build

CMakeFiles/Vocabify.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Vocabify.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Vocabify.dir/clean

CMakeFiles/Vocabify.dir/depend:
	cd /home/anaskhan/proj/vocabify/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anaskhan/proj/vocabify /home/anaskhan/proj/vocabify /home/anaskhan/proj/vocabify/build /home/anaskhan/proj/vocabify/build /home/anaskhan/proj/vocabify/build/CMakeFiles/Vocabify.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Vocabify.dir/depend

