cmake_minimum_required(VERSION 3.28)

project(gh-mix)

add_subdirectory(c)
add_subdirectory(cpp)
add_subdirectory(rust)
# だれか作って
#add_subdirectory(go)
# だれか作って
#add_subdirectory(python)

# CPack configuration
include(CPack)

set(CPACK_GENERATOR "TGZ")
set(CPACK_PACKAGE_NAME "gh-mix")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_CONTACT "myname@gmail.com")

# Additional settings can be added here
# set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Your project description")
# set(CPACK_PACKAGE_VENDOR "Your Vendor Name")
# set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}")

# Include the CPack module
#include(CPack)
