nasm -f elf64 -g -F dwarf max_subarray_sum.asm -o max_subarray_sum.o
gcc -g max_subarray_sum.c max_subarray_sum.o -o test
./test
