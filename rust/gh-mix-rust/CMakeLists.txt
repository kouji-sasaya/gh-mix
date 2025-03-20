project(gh-mix-rust)

# Set the build directory for Cargo
set(RUST_BUILD_DIR ${CMAKE_BINARY_DIR}/rust/hello_rust)

# Create the build directory if it doesn't exist
file(MAKE_DIRECTORY ${RUST_BUILD_DIR})

add_custom_target(${PROJECT_NAME}
  ALL
  COMMAND cargo build --release --target-dir ${RUST_BUILD_DIR}
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  BYPRODUCTS ${RUST_BUILD_DIR}/release/hello_rust
)


#add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#    COMMAND ${CMAKE_COMMAND} -E copy ${RUST_BUILD_DIR}/release/gh-mix-rust ${CMAKE_BINARY_DIR}/gh-mix-rust
#)

# Install the binary
install(PROGRAMS ${RUST_BUILD_DIR}/release/${PROJECT_NAME} DESTINATION bin)
