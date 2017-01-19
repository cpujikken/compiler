#clone project BEGIN
mkdir cpu-jikken
cd cpu-jikken
git clone https://github.com/cpujikken/compiler
git clone https://github.com/cpujikken/assembler
git clone https://github.com/cpujikken/Simulator
cd compiler


directory structure becomes
▾ assembler/
    assembler*
    assembler.c
    assembler2*
    assembler2.c
    assembler3*
    assembler3.c
    example
    example.s
    lib.ml
    lib.s
▾ compiler/
    globals.s
    how-to-compile.sh
    Makefile
    min-caml*
    minrt.ml
    minrt.s
▾ Simulator/
    bsim*
    define.c
    example
    Makefile
    README.md

#clone project END

make clean
make
./min-caml minrt
cd ../assembler
../compiler/min-caml -lib true lib
cat ../compiler/minrt.s ../compiler/globals.s lib.s > example.s
make
make test
cp example ../Simulator/
cd ../Simulator
make clean
#edit define.c for seting
make
./bsim example #not tested yet
