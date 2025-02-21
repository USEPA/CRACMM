import os
import shutil


os.mkdir('../docs/_downloads/jupyter_notebooks')
util_files = sorted(os.listdir('../utilities'))
for file_name in util_files:
    if file_name[-6:] == '.ipynb':
        shutil.copyfile('../utilities/' + file_name, '../docs/_downloads/jupyter_notebooks/copy_of_' + file_name)

# test = open('../docs/_downloads/jupyter_notebooks/test.txt', 'w')
# test.write('test')
# test.close()