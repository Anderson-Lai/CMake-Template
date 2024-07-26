

### Prerequisites:
Ensure you already have cmake 3.20 or higher installed and a C++ compiler <br />
Download cmake here: https://cmake.org/download/ <br />

On Windows, install the MSVC C++ compiler if you have not already <br />
On Linux, gcc/g++ should already be installed <br />
Ensure your compiler supports C++ 20 <br />

### If you would like to use vcpkg to fetch dependencies, refer [here](/docs/vcpkg.md)
#### Otherwise, CMake's FetchContent will be used

#### Build the project
Run the following commands in command prompt / the terminal at the project's root directory:
```
cd scripts
./build.bat (on windows)
./build.sh (on linux / mac)
```
