

#### Vcpkg installation
```
git clone https://github.com/microsoft/vcpkg.git
cd path/to/vcpkg
.\bootstrap-vcpkg.bat
```

#### Add vcpkg as an environment variable
```
setx VCPKG_ROOT_DIRECTORY path/to/vcpkg (ensure you use '/' and not '\\' even on windows)
```
#### Install depdencies with vcpkg
```
cd path/to/vcpkg
vcpkg install curl
vcpkg integrate install
```