

cd ..

# make the build folder
mkdir build
cd build

# build with CMake using CMakeLists.txt
cmake ..
cmake --build . --config Release