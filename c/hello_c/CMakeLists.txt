# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)

# Set the project name
project(hello_c)

# Add an executable
add_executable(
  hello_c
  ./src/hello.c
)  

# Install the executable
install(TARGETS hello_c DESTINATION bin)