cmake_minimum_required(VERSION 3.10)
project(gh_sasaya_rust)

add_custom_target(hello_rust ALL
    COMMAND cargo build --release
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
