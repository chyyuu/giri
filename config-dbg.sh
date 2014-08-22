. ./setenv.sh
which clang
clang --version
rm -rf build
mkdir build
cd build
../configure --with-llvmsrc=/home/chyyuu/develop/llvm-git/mytest/giri/build/../../../src/llvm --with-llvmobj=/home/chyyuu/develop/llvm-git/mytest/giri/build/../../../build --enable-optimized CXXFLAGS=-DEBUG_GIRI_RUNTIME
make clean
bear -c ~/local/etc/bear.conf -l ~/local/lib/x86_64-linux-gnu/libear.so -- make 
cd ..
