cmake_minimum_required(VERSION 3.20)

# use vcpkg as package manager
set(VCPKG_REQUIRED OFF)
if (${VCPKG_REQUIRED})
    if (DEFINED ENV{VCPKG_ROOT_DIRECTORY})
        set(CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT_DIRECTORY}/scripts/buildsystems/vcpkg.cmake")
    else()
        message(FATAL_ERROR "Environment varaible VCPKG_ROOT_DIRECTORY is not set. Point it to the root directory of where vcpkg is installed.")
    endif()
endif()

# variables for common paths
include("${CMAKE_SOURCE_DIR}/cmake/paths.cmake")

project(add_project_name CXX)

# compile with c++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# gather all dependencies
# find_package(CURL REQUIRED)
# include(FetchContent)

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