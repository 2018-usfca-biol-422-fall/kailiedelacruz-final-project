# the pipe and tail -n +2 is a handy way to exclude the first line
for SRA_number in $(cut -f 7 data/metadata/SraRunTable.txt | tail -n +2)
do
    /Users/kailiedelacruz/Downloads/sratoolkit.2.9.2-mac64/bin/fastq-dump -v $SRA_number -O data/raw_data
done