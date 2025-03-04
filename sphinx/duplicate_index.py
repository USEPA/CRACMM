index_file_path = '/work/MOD3DEV/mpye/cracmm_sphinx/index.md'
duplicate_file_path = '/work/MOD3DEV/mpye/cracmm_sphinx/index_duplicate.md'

index_file = open(index_file_path, 'r')
duplicate_file = open(duplicate_file_path, 'w')

toctree = False
for line in index_file:
    if toctree == False:
        if '```{eval-rst}' not in line:
            duplicate_file.write(line)
        else:
            toctree = True

index_file.close()
duplicate_file.close()