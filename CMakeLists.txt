cmake_minimum_required(VERSION 3.20)


# variables for common paths
include("${CMAKE_SOURCE_DIR}/cmake/paths.cmake")

project(add_project_name CXX)

# compile with c++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# compile as an executable
add_executable(${PROJECT_NAME} "${SRC_DIR}/main.cpp")

# set all the include paths
target_include_directories(${PROJECT_NAME} 
    PRIVATE 
        "${INCLUDE_DIR}/"
)

# gather all subdirectories
add_subdirectory("${SRC_DIR}/core")

# link the subdirectories and dependencies
target_link_libraries(${PROJECT_NAME} PRIVATE core)