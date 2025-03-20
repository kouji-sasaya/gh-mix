project(gh-mix-cpp)

add_executable(${PROJECT_NAME}
    ./src/hello.cpp
 )

install(TARGETS ${PROJECT_NAME} DESTINATION bin)