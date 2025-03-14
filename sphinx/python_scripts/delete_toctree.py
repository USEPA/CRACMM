index_file_path = '../index.md'

#Extract text from index.md
index_file = open(index_file_path, 'r')
index_lines = index_file.readlines()
index_file.close()

#overwrite index.md without including toctree
index_file = open(index_file_path, 'w')
toctree = False
for line in index_lines:
    if toctree == False:
        if '```{eval-rst}' not in line:
            index_file.write(line)
        else:
            toctree = True
index_file.close()