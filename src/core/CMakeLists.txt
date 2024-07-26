

# getting dependencies
include(FetchContent)

message("Fetching dependencies")
if (DEFINED ENV{VCPKG_ROOT_DIRECTORY})
	find_package(CURL REQUIRED)
else()
	FetchContent_Declare(
		CURL 
		GIT_REPOSITORY https://github.com/curl/curl
		GIT_TAG master
	)
	FetchContent_MakeAvailable(CURL)
endif()
message("Done fetching and building dependencies")

# library name
project(core CXX)

add_library(${PROJECT_NAME} STATIC 
	core.cpp 
)

target_include_directories(${PROJECT_NAME} 
	PRIVATE 
		"${INCLUDE_DIR}/core/"
)

target_link_libraries(${PROJECT_NAME} PRIVATE CURL::libcurl)