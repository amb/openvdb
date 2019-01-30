mkdir py36
cd py36
cmake -G"Visual Studio 15 2017 Win64" -DCMAKE_TOOLCHAIN_FILE=E:\dev\libs\vcpkg\scripts\buildsystems\vcpkg.cmake -DPYTHON_EXECUTABLE="E:/dev/libs/python3.6_x64/python.exe" ..
cmake --build . --target ALL_BUILD --config Release
