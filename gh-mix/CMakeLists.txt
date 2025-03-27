
project(gh-mix)

# if Linux or MacOS
if(UNIX)
    file(COPY gh-mix DESTINATION ${CMAKE_BINARY_DIR})
elseif(WIN32)
    file(COPY gh-mix DESTINATION ${CMAKE_BINARY_DIR})
endif()
    