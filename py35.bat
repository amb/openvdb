mkdir py35
cd py35
cmake -G"Visual Studio 15 2017 Win64" -DPYTHON_EXECUTABLE="E:/dev/libs/python3.5_x64/python.exe" ..
cmake --build . --target ALL_BUILD --config Release
