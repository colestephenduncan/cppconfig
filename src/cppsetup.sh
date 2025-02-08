#!/bin/bash


echo "Enter Output Directory: "

usrinput=$(python3 locationdir.py)

echo "Enter Project Name: "

projectname=$(python3 projectname.py)

mkdir $usrinput/src
mkdir $usrinput/bin
mkdir $usrinput/build
mkdir $usrinput/docs

clang-format --dump-config --style=Google > $usrinput/.clang-format


cat <<EOF > "$usrinput/CMakeLists.txt"
cmake_minimum_required(VERSION 3.10)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY \${CMAKE_SOURCE_DIR}/bin)
project(${projectname}-project)
add_executable(cppgame src/main.cpp)
EOF


cat <<EOF > "$usrinput/README.md"
# **${projectname}**

Code by Cole Duncan
EOF

cat <<EOF > "$usrinput/src/main.cpp"
#include <iostream>
int main(){
	std::cout << "Hello World!" << std :: endl;
	return 0;
}
EOF

cat <<EOF > "$usrinput/.gitignore"
build/
docs/
EOF


