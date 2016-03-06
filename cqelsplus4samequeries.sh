#!/bin/bash
for f in /home/chanlevan/MastersOfAppliedScience/Dev/Experiments/bin/param4cqelsplus/*
do 
fname="${f##*/}"
echo ${fname}
java -Xms2G -Xmx12G -cp ./cqelsplus.jar graphofthings.masterthesis.exp.Overall_MemoryConsumption $f /home/chanlevan/MastersOfAppliedScience/Dev/Experiments/bin/testbeforeupload2github/ &> $fname.Scqelspluslog
done
