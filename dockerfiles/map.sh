#!/usr/bin/env bash

fileIn=$1
chrom=$2
fileOut=$3

samtools view -b -h $fileIn $chrom | samtools view -q 30 -Q 30 | perl -ane 'print $F[3], "\n";' > $fileOut
