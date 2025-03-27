project(gh-mix-rust)

# Set the build directory for Cargo
set(RUST_BUILD_DIR ${CMAKE_BINARY_DIR}/${PROJECT_NAME})

# Create the build directory if it doesn't exist
file(MAKE_DIRECTORY ${RUST_BUILD_DIR})

add_custom_target(${PROJECT_NAME}
  ALL
  COMMAND cargo build --release --target-dir ${RUST_BUILD_DIR}
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
  BYPRODUCTS ${RUST_BUILD_DIR}/release/${PROJECT_NAME}
)

# Install the binary
install(PROGRAMS ${RUST_BUILD_DIR}/release/${PROJECT_NAME} DESTINATION bin)
