AUX_SOURCE_DIRECTORY(${CMAKE_CURRENT_SOURCE_DIR} source)
ADD_EXECUTABLE(gtest-example ${source})


FIND_PACKAGE ( Threads REQUIRED )

INCLUDE_DIRECTORIES("/usr/local/include/gtest" "/usr/local/include/gmock")
LINK_DIRECTORIES("/usr/local/lib")
TARGET_LINK_LIBRARIES(gtest-example libgtest.a libgtest_main.a)
TARGET_LINK_LIBRARIES ( gtest-example ${CMAKE_THREAD_LIBS_INIT} )
