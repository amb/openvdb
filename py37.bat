mkdir py37
cd py37
cmake -G"Visual Studio 15 2017 Win64" -DCMAKE_TOOLCHAIN_FILE=E:\dev\libs\vcpkg\scripts\buildsystems\vcpkg.cmake -DPYTHON_EXECUTABLE="E:/dev/libs/python3.7_x64/python.exe" ..
cmake --build . --target ALL_BUILD --config Release
