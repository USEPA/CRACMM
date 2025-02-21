rm -r ../docs/*
mkdir ../_static
mkdir ../utilities/jupyter_out
python3 python_scripts/duplicate_index.py
sphinx-build .. ../docs
#python3 python_scripts/cp_ipynb.py
touch ../docs/.nojekyll
rm -r  jupyter_execute
rm -r ../jupyter_execute
rm -r ../_static
rm -r ../utilities/jupyter_out
rm ../index_duplicate.md

