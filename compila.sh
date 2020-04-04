# Compile and debug an.asm file with kdbg

# Just run ./compila.sh your_asm_file your_c_file (without extension)

if [ $# -eq 2 ]


then

    asmfile=$1
    cfile=$2

    echo "Compiling..."

    yasm -f elf64 -g dwarf2 $asmfile.asm; gcc -no-pie -o $asmfile $cfile.c $asmfile.o 

    echo "Debugging..."

    kdbg ./$asmfile

else

    echo "-------------------------------------------------------------"
    echo "Error"
    echo "You must type the name of the .asm file (first) and .c file (second) without extension"
    echo "Example: ./compila-c.sh your_asm_file your_c_file"
    echo "Try again..."
    echo "-------------------------------------------------------------"

fi