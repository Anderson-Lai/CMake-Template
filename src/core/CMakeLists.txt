

add_library(core STATIC 
	core.cpp 
)

set(LIB_NAME core)

target_include_directories(${LIB_NAME} 
	PRIVATE 
		"${CMAKE_SOURCE_DIR}/include/core/"
)