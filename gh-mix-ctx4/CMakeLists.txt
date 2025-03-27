cmake_minimum_required(VERSION 3.10)
project(gh-mix-ctx4)

# Build the Go executable using a custom target.
add_custom_target(gh-mix-ctx4 ALL
  COMMAND go build
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/src/main.go
  COMMENT "Building gh-mix-ctx4 Go executable"
)

# Install the Go executable to the bin directory.
install(PROGRAMS ${CMAKE_BINARY_DIR}/gh-mix-ctx4/main DESTINATION bin RENAME gh-mix-ctx4)
