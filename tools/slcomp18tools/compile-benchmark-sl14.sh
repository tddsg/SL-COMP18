# Called by ./compile-benchmark-sl14.sh [songbird|sleek] <path-to-benchmark>
# Example:  ./compile-benchmark-sl14.sh songbird ../../bench/qf_shid_entl

# Has to be called inside the folder slcomp18tools


SOLVER=$1
BENCH_FOLDER=$2
SL2SOLVER=../slcomp14tools/compile 

for FILE in $BENCH_FOLDER/*.sl14; do
    $SL2SOLVER -$SOLVER $FILE
done
