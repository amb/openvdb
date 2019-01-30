mkdir py35
cd py35
cmake -G"Visual Studio 15 2017 Win64" -DCMAKE_TOOLCHAIN_FILE=E:\dev\libs\vcpkg\scripts\buildsystems\vcpkg.cmake -DPYTHON_EXECUTABLE="C:/Python3/python.exe" ..
cmake --build . --target ALL_BUILD --config Release
