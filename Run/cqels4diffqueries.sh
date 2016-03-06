#!/bin/bash
for f in /home/chanlevan/MastersOfAppliedScience/Dev/Experiments/bin/RCQELSParams/*
do 
fname="${f##*/}"
echo ${fname}
java -Xms2G -Xmx12G -cp ./rcqels.jar org.deri.cqels.test.masterthesisexp.MC4DifferentQueries $f /media/Windows/ThesisFactory/output/R_CQELS/MC4DiffQueries/ &> $fname.Drcqelslog
done
