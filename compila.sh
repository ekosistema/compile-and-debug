# Compile and debug an.asm file with kdbg

# Just run ./compila.sh your_file (without extension)

if [ $# -eq 1 ]


then

    echo "Compiling..."

    yasm -f elf64 -g dwarf2 $1.asm; gcc -no-pie -o $1 source_file $1.o

    echo "Debugging..."

    kdbg ./$1

else

    echo "-------------------------------------------------------------"
    echo "Error"
    echo "You must type the name of the .asm file (without extension)"
    echo "Remember to replace source_file with the right filename (if any)"
    echo "Try again..."
    echo "-------------------------------------------------------------"

fi