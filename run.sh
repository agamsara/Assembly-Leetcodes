nasm -f elf64 -g -F dwarf merge_sorted.asm -o merge_sorted.o
gcc -g merge_sorted.c merge_sorted.o -o test
./test
