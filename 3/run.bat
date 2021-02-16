echo build image
nasm -o out.img src.asm
bochs -q -f bochsrc.bxrc