# the pipe and tail -n +2 is a handy way to exclude the first line
# A complete pathname was included that takes the function directly
# to the downloaded sratoolkit
# The number 7 is used because this is the column that holds
# the SRA_numbers. The output of this function is being put into
# the data/raw_data folder
for SRA_number in $(cut -f 7 data/metadata/SraRunTable.txt | tail -n +2)
do
    /Users/kailiedelacruz/Downloads/sratoolkit.2.9.2-mac64/bin/fastq-dump -v $SRA_number -O data/raw_data
done