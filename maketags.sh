rm -f cscope.files cscope.in.out cscope.out cscope.po.out tags
find . -type f -name "*.h" -o -name "*.cpp">cscope.files
find ../../llvm-3.4.2.src/llvm/include -type f -name "*.h" >>cscope.files
cscope -bq
ctags -L cscope.files
