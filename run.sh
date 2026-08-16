nasm -f elf64 is_power_of_two.asm -o reverse_byte.o
gcc is_power_of_two.c reverse_byte.o -o test
./test
