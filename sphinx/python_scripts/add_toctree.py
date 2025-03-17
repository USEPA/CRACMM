#provide path of each file neccessary for the process
index_file_path = '../index.md'
toctree_file_path = 'toctree.txt'

#Extract text from index.md
index_file = open(index_file_path, 'r') 
index_lines = index_file.readlines()
index_file.close()

#check to see if the toctree is already in index.md
toctree_present = False
for line in index_lines:
    if '```{eval-rst}' in line:
        toctree_present = True

#open files for reading tocree and appending to index
index_file = open(index_file_path, 'a')
toctree_file = open(toctree_file_path, 'r')

#if there is no toctree in index.md yet, add one based 
#on the contents of toctree.txt
if toctree_present == False:
    index_file.write('\n\n\n\n')
    for line in toctree_file:
        index_file.write(line)

#close the files
index_file.close()
toctree_file.close()