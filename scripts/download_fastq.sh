#!/bin/bash

# A script to download the data from the NCBI dataset as fastq files. This
# script changes the format from SRA to fastq, using the fastq-dump function
# that is a part of the sratoolkit.
# Before running this script, sratoolkit needs to be downloaded. The
# sratoolkit is a set of libraries and tools that are used to convert
# SRA data into different file formats.
# Kailie Dela Cruz
# November 29, 2018
# kmdelacruz@dons.usfca.edu

# the pipe and tail -n +2 is a handy way to exclude the first line
# A complete pathname was included in the for loop
# to take the function directly
# to the downloaded sratoolkit file.
# The number 7 is used because this is the column that holds
# the SRA_numbers in the SraRunTable. The output of this function is being put into
# the data/raw_data folder
# A for loop is used because we are dealing with multiple files at one time.
# If we were working with a single file, a for loop would not be needed.
for SRA_number in $(cut -f 7 data/metadata/SraRunTable.txt | tail -n +2)
do
    /Users/kailiedelacruz/Downloads/sratoolkit.2.9.2-mac64/bin/fastq-dump -v $SRA_number -O data/raw_data
done