#!/usr/sh

# Called by ./compile-benchmark.sh [songbird|sleek] <path-to-benchmark>
# Example:  ./compile-benchmark.sh songbird ../../bench/qf_shid_entl

# Has to be called inside the folder slcomp18tools

for FILE in ./*.sl14; do
    echo "Repair input for Asterix: $FILE"
    sed -i -e "s/(check-sat)//g" $FILE
    sed -i -e "s/^(set-info :smt-lib-version 2)/(set-info :smt-lib-version 2.0)/g" $FILE
    echo "(check-sat)" >> $FILE
done
