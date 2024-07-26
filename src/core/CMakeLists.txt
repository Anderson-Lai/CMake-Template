

project(core CXX)

add_library(${PROJECT_NAME} STATIC 
	core.cpp 
)

target_include_directories(${PROJECT_NAME} 
	PRIVATE 
		"${INCLUDE_DIR}/core/"
)