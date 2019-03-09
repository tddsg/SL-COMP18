# Called by ./compile-all-benchmarks.sh [songbird|sleek]
# Example:  ./compile-all-benchmarks.sh songbird

# Has to be called inside the folder slcomp18tools

SOLVER=$1

declare -a BENCH_FOLDERS=("qf_shid_entl"
		                      "qf_shid_sat"
		                      "qf_shidlia_entl"
		                      "qf_shidlia_sat"
                          "qf_shlid_entl"
		                      "qf_shls_entl"
		                      "qf_shls_sat"
		                      "shid_entl"
		                      "shidlia_entl")

for BENCH in ${BENCH_FOLDERS[@]}; do
    rm -rf $BENCH
    rm *.smt2*
    mkdir $BENCH
    ./compile-benchmark.sh $SOLVER "../../bench/$BENCH"
    mv *.sb $BENCH
    rm *.sl14
done
