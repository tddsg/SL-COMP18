# Called by ./compile-benchmark.sh [songbird|sleek] <path-to-benchmark>
# Example:  ./compile-benchmark.sh songbird ../../bench/qf_shid_entl

# Has to be called inside the folder slcomp18tools


SOLVER=$1
BENCH_FOLDER=$2

for FILE in $BENCH_FOLDER/*.smt2; do
    ./do-tosolver.sh $SOLVER $FILE
done
