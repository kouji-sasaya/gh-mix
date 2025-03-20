cmake_minimum_required(VERSION 3.10)
project(hello_cpp)

add_executable(hello_cpp
 ./src/hello.cpp
 )

install(TARGETS hello_cpp DESTINATION bin)
