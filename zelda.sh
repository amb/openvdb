/Library/Developer/CommandLineTools/usr/bin/c++ -std=c++11 -stdlib=libc++ \
    -DPY_OPENVDB_USE_NUMPY -fPIC \
    -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk \
    -Wl,-headerpad_max_install_names -bundle -undefined dynamic_lookup \
    -o pyopenvdb.so CMakeFiles/pyopenvdb.dir/pyFloatGrid.cc.o CMakeFiles/pyopenvdb.dir/pyIntGrid.cc.o \
    CMakeFiles/pyopenvdb.dir/pyMetadata.cc.o CMakeFiles/pyopenvdb.dir/pyOpenVDBModule.cc.o \
    CMakeFiles/pyopenvdb.dir/pyTransform.cc.o CMakeFiles/pyopenvdb.dir/pyVec3Grid.cc.o \
    ../libopenvdb.5.1.0.dylib \
    /usr/local/lib/libboost_python37.dylib \
    /usr/local/lib/libboost_numpy37.dylib \
    /usr/local/lib/libHalf.dylib /usr/local/lib/libboost_iostreams-mt.dylib \
    /usr/local/lib/libboost_system-mt.dylib /usr/local/lib/libtbb.dylib \
    /usr/lib/libz.dylib /usr/local/lib/libblosc.dylib /usr/local/lib/libHalf.dylib

otool -L pyopenvdb.so
python3 -c "import pyopenvdb; print(dir(pyopenvdb))"

# /Library/Developer/CommandLineTools/usr/bin/c++ -std=c++11 -stdlib=libc++ \
#     -DPY_OPENVDB_USE_NUMPY -fPIC \
#     -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk \
#     -Wl,-headerpad_max_install_names -undefined dynamic_lookup \
#     -o pyopenvdb.so CMakeFiles/pyopenvdb.dir/pyFloatGrid.cc.o CMakeFiles/pyopenvdb.dir/pyIntGrid.cc.o \
#     CMakeFiles/pyopenvdb.dir/pyMetadata.cc.o CMakeFiles/pyopenvdb.dir/pyOpenVDBModule.cc.o \
#     CMakeFiles/pyopenvdb.dir/pyTransform.cc.o CMakeFiles/pyopenvdb.dir/pyVec3Grid.cc.o \
#     ../libopenvdb.5.1.0.dylib \
#     -framework OpenGL -framework OpenGL -framework Cocoa \
#     -framework IOKit -framework CoreVideo \
#     /usr/local/Cellar/python/3.7.3/Frameworks/Python.framework/Versions/3.7/Python \
#     /usr/local/lib/libboost_python37.dylib \
#     /usr/local/lib/libboost_numpy37.dylib \
#     /usr/local/lib/libHalf.dylib /usr/local/lib/libboost_iostreams-mt.dylib \
#     /usr/local/lib/libboost_system-mt.dylib /usr/local/lib/libtbb.dylib \
#     /usr/lib/libz.dylib /usr/local/lib/libblosc.dylib /usr/local/lib/libHalf.dylib