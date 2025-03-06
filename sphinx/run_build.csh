rm -r ../docs/*   #cleans out the directory where HTML documentation is stored to guarantee a fresh start on the HTML every time
mkdir ../_static    #prevents a build warning related to there not being a "_static" directory when running the sphinx-build command. this does not affect the resulting HTML in any way, it simply removes the warning.
mkdir ../utilities/output    #creates a directory for Jupyter Notebook output files to be temporarily stored while the notebooks are executed during the sphinx-build command. The files put here are not needed and this directory is deleted after the sphinx-build command is completed.
python3 duplicate_index.py    #makes a duplicate of index.md called index_duplicate.md. The duplicate that is created does not contain the toctree sphinx directives that are in the original file. index_duplicate.md is included in the main toctree of index.md, allowing the user to access a copy of the landing page from the left navbar.
sphinx-build .. ../docs    #builds HTML files based on markdown files 
touch ../docs/.nojekyll
rm -r  jupyter_execute
rm -r ../jupyter_execute
rm -r ../_static
rm -r ../utilities/output
rm ../index_duplicate.md
rm ../docs/.doctrees/environment.pickle

