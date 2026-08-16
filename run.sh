nasm -f elf64 first_pair_over.asm -o first_pair_over.o
gcc first_pair_over.c first_pair_over.o -o test
./test
