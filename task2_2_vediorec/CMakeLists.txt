cmake_minimum_required(VERSION 2.7)

project(task2_2)


message("${OpenCV_LIBS}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${task2_2_SOURCE_DIR}/bin)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(task2_2 src/task2_2.cpp)

link_directories(${OpenCV_LIBRARY_DIRS})

add_definitions(-DBOOST_ERROR_CODE_HEADER_ONLY)

target_link_libraries(task2_2 ${OpenCV_LIBS} -pthread)

add_definitions(-std=c++11)
