find_package(protobuf CONFIG REQUIRED)

message(STATUS "Using Protocol Buffers ${protobuf_VERSION}")

set(CMAKE_INCLUDE_CURRENT_DIR TRUE)


foreach(example test)
    set(${example}_SRCS ${example}.cpp)
    set(${example}_PROTOS test.proto)

    #protobuf_generate_cpp(${example}_PROTO_SRCS ${example}_PROTO_HDRS ${${example}_PROTOS})
    #list(APPEND ${example}_SRCS ${${example}_PROTO_SRCS} ${${example}_PROTO_HDRS})

    #Executable setup
    set(executable_name ${example}_cpp)
    add_executable(${executable_name} ${${example}_SRCS} ${${example}_PROTOS})
    #target_include_directories(${executable_name} PUBLIC ${PROTOBUF_INCLUDE_DIRS})
    #target_link_libraries(${executable_name} ${PROTOBUF_LIBRARIES})
    target_link_libraries(${executable_name} protobuf::libprotobuf)
    protobuf_generate(TARGET ${executable_name})

endforeach()

