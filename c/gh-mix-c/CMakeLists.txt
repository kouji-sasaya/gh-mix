# Set the project name
project(gh-mix-c)

# Add an executable
add_executable(${PROJECT_NAME}
  ./src/hello.c
)  

# Install the executable
install(TARGETS ${PROJECT_NAME} DESTINATION bin)