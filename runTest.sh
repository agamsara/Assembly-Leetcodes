nasm -f elf64 -g -F dwarf count_bits.asm -o count_bits.o
gcc -g count_bits.c count_bits.o -o test

gdb ./test
