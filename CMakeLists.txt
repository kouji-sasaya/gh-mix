cmake_minimum_required(VERSION 3.28)

# if not set, set default version
if(NOT VERSION)
    set(VERSION 1.0.0)
endif()

# Set to PROJECT_VERSION
project(gh-mix VERSION ${VERSION})

add_subdirectory(c)
add_subdirectory(cpp)
add_subdirectory(rust)


# if Linux or MacOS
if(UNIX)
    set(CPACK_GENERATOR "TGZ")
# if Windows
elseif(WIN32)
    set(CPACK_GENERATOR "ZIP")
endif()

set(CPACK_PACKAGE_NAME "gh-mix")
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})
set(CPACK_PACKAGE_CONTACT "kouji.sasaya@gmail.com")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Multi pratform and Cross programing language")
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-linux-amd64")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_RESOURCE_FILE_README "${CMAKE_CURRENT_SOURCE_DIR}/README.md")

message(STATUS "CPACK_PACKAGE_NAME: ${CPACK_PACKAGE_NAME}")
message(STATUS "CPACK_PACKAGE_VERSION: ${CPACK_PACKAGE_VERSION}")
message(STATUS "CPACK_PACKAGE_CONTACT: ${CPACK_PACKAGE_CONTACT}")


# Additional settings can be added here
# set(CPACK_PACKAGE_VENDOR "Your Vendor Name")

# CPack configuration
include(CPack)
