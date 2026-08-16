nasm -f elf64 count_bits.asm -o count_bits.o
gcc count_bits.c count_bits.o -o test
./test
