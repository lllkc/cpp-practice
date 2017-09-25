if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR "DO NOT BUILD in-tree.")
endif()

cmake_minimum_required(VERSION 2.8.11)
project(cgi-example)
add_compile_options(-std=c++11)

#SET(CMAKE_CXX_COMPILER /usr/bin/g++)

add_subdirectory(src)
