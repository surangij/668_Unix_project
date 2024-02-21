
### Make this a bash script that can be executed by putting
### a "shebang" at the top of the file
#!/bin.bash
echo "It works!"

mkdir ~/RAW_DATA 


### (1) In your home directory make a directory called RAW_DATA


### (2) Copy all .fna fasta files  


###     from home directory into RAW_DATA (must work from any directory.)
#for file in ~/.*.fna; do
cp ~/*.fna ~/RAW_DATA/
#copy all the files from home directory into raw data 



### (3) Do the same with all primer files ending with .csv

cp ~/*.csv ~/RAW_DATA/

### (4) In your home directory, make 2 directories: P_DATA and RESULTS

mkdir ~/P_DATA
mkdir ~/RESULTS

### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS
export PATH=$PATH:/Users/surangijayasinghe/668_Unix_project/~/RESULTS
export PATH=$PATH:/Users/surangijayasinghe/668_Unix_project/~/RAW_DATA
export PATH=$PATH:/Users/surangijayasinghe/668_Unix_project/~/P_DATA


echo 'export PATH="$HOME/RAW_DATA:$HOME/P_DATA:$HOME/RESULTS:$PATH"' >> ~/.bashrc
source ~/.bashrc
### (6) Write your entire $PATH, the text string RAW_DATA and the 
###    contents of this directory (the names of the files) into a new file 
###    called 'readme.txt' in your home directory
echo "PATH: $PATH" > ~/readme.txt
echo "RAW_DATA" >> ~/readme.txt
ls -1 ~/RAW_DATA >> ~/readme.txt
### (7) The last command should output the contents of readme.txt
###     to the terminal.

cat ~/readme.txt

