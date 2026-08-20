nasm -f elf64 -g -F dwarf merge_adjacent_equals.asm -o merge_adjacent_equals.o
gcc -g merge_adjacent_equals.c merge_adjacent_equals.o -o test
./test
