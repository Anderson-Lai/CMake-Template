

### How to build (run all commands in command prompt / the terminal):
Ensure you already have cmake 3.20 installed and a C++ compiler <br />
Download cmake here: https://cmake.org/download/ <br />

On Linux, gcc/g++ should already be installed <br />
Ensure your compiler supports C++ 20 <br />
<br />

These steps use the MSVC C++ compiler <br />
<br />

#### If you would like to use vcpkg to fetch dependencies, refer here [vcpkg instructions](/docs/vcpkg.md)
#### Otherwise, CMake's FetchContent will be used

#### Build the project
Run the following commands at the project's root directory:
```
cd scripts
./build.bat (on windows)
./build.sh (on linux / mac)
```
