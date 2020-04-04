# Compile and debug an.asm file with kdbg

# Just run ./compila.sh your_file (without extension)

if [ $# -eq 1 ]


then

    asmfile=$1

    echo "Compiling..."

    yasm -f elf64 -g dwarf2 $asmfile.asm; gcc -no-pie -o $asmfile source_file.c $asmfile.o 

    echo "Debugging..."

    kdbg ./$asmfile

else

    echo "-------------------------------------------------------------"
    echo "Error"
    echo "You must type the name of the .asm file (without extension)"
    echo "Remember to replace source_file with the right filename (if any)"
    echo "Try again..."
    echo "-------------------------------------------------------------"

fi