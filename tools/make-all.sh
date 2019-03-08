#!/bin/sh

echo "=================="
echo "MAKE: smtlib2parser-1.4"
cd smtlib2parser-1.4
make clean
make

echo "=================="
echo "MAKE: smtlib2Xparser-sl"
cd ../smtlib2Xparser-sl
make clean
cmake .
make

echo "=================="
echo "MAKE: slcomp14tools"
cd ../slcomp14tools
make clean
make
