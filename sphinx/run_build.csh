#Descriptions of each line can be found here: https://github.com/USEPA/CRACMM/tree/CRACMMdocs/sphinx/README.md#file-description-run_buildcsh
#USEPA Employees: If changes are made to this file, please update the description of each line changed in the location linked above.
rm -r ../docs/*
mkdir ../_static
mkdir ../utilities/output
python3 duplicate_index.py
sphinx-build .. ../docs
touch ../docs/.nojekyll
rm -r  jupyter_execute
rm -r ../jupyter_execute
rm -r ../_static
rm -r ../utilities/output
rm ../index_duplicate.md
rm ../docs/.doctrees/environment.pickle

