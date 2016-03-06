#!/bin/bash
for f in /param4cqels/samq/*
do 
fname="${f##*/}"
echo ${fname}
java -Xms2G -Xmx12G -cp ./rcqels.jar org.deri.cqels.test.masterthesisexp.R_Overall_MemoryConsumption $f /media/Windows/ThesisFactory/output/R_CQELS/MemoryConsumption/
done
