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
make
./sim example #not tested yet
