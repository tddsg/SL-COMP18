#!/bin/bash

# ./compile-batch.sh root-dir-bench prover-name
#
BROOT=$1
SOLVER=$2
SL2SL=../smtlib2Xparser-sl/slcomp-parser
SL2SOLVER=../slcomp14tools/compile

BENCHS=`ls -d $BROOT/*/`
BRN=`basename $BROOT`"_"$PROVER
mkdir $BRN

for b in $BENCHS; do
    BN=`basename $b`
    BP=$BRN"/"$BN
    mkdir $BP -p
    FILES=`ls $b/*.smt2`
    for f in $FILES; do
        OFILE=`basename $f`
        echo "* File $f"
        echo "** translate to input format of SL-COMP'14"
        $SL2SL --config input.prop --output SL_COMP14 $f 1> $OFILE.sl14
        echo "** translate to input format of solver $SOLVER"
        $SL2SOLVER -$SOLVER $OFILE.sl14
        mv $OFILE* $BP
    done
done

NFILES=`grep -n smt2 $LOGF | wc -l`
NCHECK=`grep -n check $LOGF | wc -l`

echo "$NFILES files vs $NCHECK checks"

if [ "$NFILES" -eq "$NCHECK" ]
then
	  echo "ok"
else
	  echo "nok"
fi
