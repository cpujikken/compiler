#!/bin/sh

recompile_compiler=false

if [ "$recompile_compiler" = true ]; then
	echo "Clean compiler..."
	make clean
	echo "Compile compiler..."
	make
	if [ $? -ne 0 ]; then
		echo "Compile compiler failed. Exit"
		exit 1
	fi
fi

echo "Compile example.ml..."
./min-caml example
if [ $? -ne 0 ]; then
	echo "Compile example.ml failed. Exit"
	exit 1
fi

if [ ! -d "../assembler" ]; then
	echo "Assembler is not found. Exit"
	exit 1
fi
echo "cd to assembler..."
cd ../assembler

echo "Compile library..."
../compiler/min-caml -lib true lib
if [ $? -ne 0 ]; then
	echo "Compile library failed. Edit"
	cd ../compiler
	exit 1
fi

echo "Link library..."
cat ../compiler/example.s ../compiler/globals.s lib.s > example.s
if [ $? -ne 0 ]; then
	echo "Link library failed. Check if example.s, globals.s, lib.s exist. Exit"
	cd ../compiler
	exit 1
fi
cp example.s ../compiler/linked-example.s

echo "Compile assembler..."
make
if [ $? -ne 0 ]; then
	echo "Compile assembler failed. Exit"
	cd ../compiler
	exit 1
fi

echo "Assemble..."
make test
if [ $? -ne 0 ]; then
	echo "Assemble program failed. Exit"
	cd ../compiler
	exit 1
fi

if [ ! -d "../Simulator" ]; then
	echo "simulator is not found. Exit"
	cd ../compiler
	exit 1
fi
echo "Copy program and label file to simulator..."
mv example ../Simulator/
if [ $? -ne 0 ]; then
	echo "Cannot move file. Exit"
	cd ../compiler
	exit 1
fi
mv example_label ../Simulator/example_label
if [ $? -ne 0 ]; then
	echo "Cannot move file. Exit"
	cd ../compiler
	exit 1
fi

echo "cd to simulator..."
cd ../Simulator

echo "Clean simulator..."
make clean

echo "Compile simulator..."
make
if [ $? -ne 0 ]; then
	echo "Compile simulator failed. Exit"
	cd ../compiler
	exit 1
fi
cp example ../compiler/

echo "Run program..."
./bsim example
if [ $? -ne 0 ]; then
	echo "Simulate program failed. Exit"
	cd ../compiler
	exit 1
fi

echo "Copy program and running result..."
cp example_out example_label example ../compiler
if [ $? -ne 0 ]; then
	echo "Cannot copy files. Exit"
	cd ../compiler
	exit 1
fi

echo "cd back to compiler..."
cd ../compiler

echo "Show running result..."
cat example_out
