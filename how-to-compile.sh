make clean
make
./min-caml minrt
cd ../assembler
../min-caml -lib true lib
cat ../min-caml/minrt.s ../min-caml/globals.s lib.s > example.s
make
make test
cp example ../Simulator/
cd ../Simulator
make clean
make
./sim example #not tested yet
