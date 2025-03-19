cmake_minimum_required(VERSION 3.10)
project(hello_rust)

# Set the Rust compiler
set(CMAKE_RUST_COMPILER cargo)

# Add a custom target to build the Rust project
add_custom_target(hello_rust ALL
    COMMAND ${CMAKE_RUST_COMPILER} build --release
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    BYPRODUCTS ${CMAKE_SOURCE_DIR}/target/release/hello_rust
    COMMENT "Building Rust project"
)

# Add the Rust executable as an output
add_executable(hello_rust_exe IMPORTED)
set_target_properties(hello_rust_exe PROPERTIES
    IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/target/release/hello_rust
)
