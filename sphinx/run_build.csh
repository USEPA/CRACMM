#Descriptions of each line can be found here: https://github.com/USEPA/CRACMM/tree/CRACMMdocs/sphinx/README.md#file-description-run_buildcsh
#USEPA Employees: If changes are made to this file, please update the description of each line changed in the location linked above.
rm -r ../docs/*
mkdir ../utilities/output
cp ../index.md ../index_duplicate.md
python3 python_scripts/add_toctree.py
sphinx-build .. ../docs
python3 python_scripts/delete_toctree.py
touch ../docs/.nojekyll
rm -r  jupyter_execute
rm -r ../jupyter_execute
rm -r ../utilities/output
rm ../index_duplicate.md
rm ../docs/.doctrees/environment.pickle

