#! /bin/bash

### Run this script from within the RAW_DATA folder which should be in your home directory (~/RAW_DATA)
### Inside this directory should be this script AND the fasta file bigdata.fna

### NOTE THAT SECTIONS (1) and (2) HAVE ALREADY BEEN COMPLETED so you do not need to edit (1) and (2). 

### (1) This will ask the user for a fasta file for analysis. The following command, read, reads in user input from the command line.
###     For this exercise, enter the filename bigdata.fna which should be in your file ~/RAW_DATA

read -p "Enter fasta filename: " fn

### (2) This will check to see if the file exists. If the file does not exist, the function exits. I modified this if/then statement from the internet.

if [[ ! -f ./$fn ]]; then
   echo "The file does not exist. Exiting..."
   exit 1
fi

echo $fn


### (3) Split up the bigdata.fna into separate smaller .fna files of 50,000 sequences each.
###
###     I got the following line of code below from the internet. You will need to modify this awk command.
###
###     Currently, the below awk command splits a fasta file into smaller files of just 1000 sequences each. We want the fasta file to be split into smaller files of 50000 sequences each. Modify the awk script to make this happen. 
###
###     The other problem is that it works on the wrong file. Change it so that it works with the user input file (see echo above) (hint: how do you call variables in AWK commands???).
###     Change these things and you should get 3 to 4 output files starting with 'myseq'

#awk 'BEGIN {n_seq=0;} /^>/ {if(n_seq%1000==0){file=sprintf("myseq%d.fa",n_seq);} print >> file; n_seq++; next;} { print > file; }' sequences.fna


### (4) Use grep to check how many fasta sequences are in all of the .fna files and redirect this to a file in RAW_DATA called 'log.txt'
###     Hints on grep: -c counts and you can grep multiple files at once using the *. 



### (5) Print the output of log.txt to the terminal 



### (6) Below is a for loop and an awk script. The for loop below cycles though every file in the current directory and prints them.
###     The awk script removes all the line breaks from fasta files.
###     TASK: Change the for loop so that it runs the awk command on all of the my*fna files and
###           outputs a new file with a .txt extension.
###     HINT: put the awk inside the do loop; also you can add extensions by $f'.txt' - this added a .txt to every $f file.

### More information on for loops can be found at: https://www.cyberciti.biz/faq/bash-loop-over-file/

for f in my*fna
do
    echo $f
done

#awk 'BEGIN{RS=">"}{gsub("\n","",$0); print ">"$0}' myseq50000.fna > myseq50000.fna.txt


### (7) Use a for loop to count all the instances of the following string in all of the .fna.txt files:
###     'CACCCTCTCAGGTCGGCTACGCATCGTCGCC'
###     Also, like in (4) have the grep results for all files appended to log.txt (DON'T OVERWRITE IT)
###       then show the contents of log.txt in the terminal

for fn in my*fna.txt
do
    echo $fn >> log.txt
done


### (8) Move all the .fna.txt files to the directory ~/P_DATA



### (9) Make a tar archive of the files in P_DATA - call it pdata.tar



### (10) Compress pdata.tar




