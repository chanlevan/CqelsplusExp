#!/bin/bash
for f in /home/chanlevan/MastersOfAppliedScience/Dev/Experiments/bin/param4cqelsplus/samq/*
do 
fname="${f##*/}"
echo ${fname}
java -Xms2G -Xmx12G -cp ./cqelsplus.jar graphofthings.masterthesis.exp.MC4DifferentQueries $f /home/chanlevan/MastersOfAppliedScience/Dev/Experiments/bin/testbeforeupload2github/ &> $fname.Dcqelspluslog
done
