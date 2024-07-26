

# getting dependencies
include(FetchContent)

message(STATUS "Fetching dependencies")
if (NOT DEFINED ENV{VCPKG_ROOT_DIRECTORY})
    set(CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT_DIRECTORY}/scripts/buildsystems/vcpkg.cmake")

    find_package(CURL REQUIRED)
else()
    message(STATUS 
        "Environment varaible VCPKG_ROOT_DIRECTORY is not set. Downloading dependencies from source."
    )

    FetchContent_Declare(
        CURL 
        GIT_REPOSITORY https://github.com/curl/curl.git 
        GIT_TAG master
    )
    FetchContent_MakeAvailable(CURL)
endif()
message("Done fetching and building dependencies")

project(core CXX)

add_library(${PROJECT_NAME} STATIC 
	core.cpp 
)

target_include_directories(${PROJECT_NAME} 
	PRIVATE 
		"${INCLUDE_DIR}/core/"
)

target_link_libraries(${PROJECT_NAME} PRIVATE CURL::libcurl)