# Sphinx Usage in the CRACMM Repository

## Process to Build HTML
When changes are made to the main branch of the CRACMM repository, new HTML will need to be generated in order to stay up to date with the latest version. This is true regardless of whether the changes are made to markdown files used for documentation or any file that could be downloaded directly via link anywhere on the website. In other words, HTML should ALWAYS be rebuilt every time a change is made, regardless of how small of a change it is. The steps for generating the new HTML and making them live on the CRACMM GitHub Pages website are listed below:  

1. In the remote USEPA/CRACMM repository on GitHub, make sure that the changes that have been made in the main branch are mirrored in the CRACMMdocs branch. This will result in the two branches being identical with the exception of the CRACMMdocs branch having additional directories called `docs` and `sphinx`, and additional files called `conf.py` and `.gitignore`.  

2. Clone a copy of the CRACMM repository to your work directory on atmos, or, if you already have a local version, make sure that all branches are up to date with the remote repository on GitHub.

3. Once in the your local directory containing the CRACMM repository, enter the commands `git switch CRACMMdocs` and `cd sphinx`.

4. `run_build.csh`
    chmod

## Descriptions of Important Sphinx Files

### sphinx/run_build.csh


#### rm -r ../docs/*
cleans out the directory where HTML documentation is stored to guarantee a fresh start on the HTML every time

#### mkdir ../_static
prevents a build warning related to there not being a "_static" directory when running the sphinx-build command. this does not affect the resulting HTML in any way, it simply removes the warning.

#### mkdir ../utilities/output
creates a directory for Jupyter Notebook output files to be temporarily stored while the notebooks are executed during the sphinx-build command. The files put here are not needed and this directory is deleted after the sphinx-build command is completed.

#### python3 duplicate_index.py    
makes a duplicate of index.md called index_duplicate.md. The duplicate that is created does not contain the toctree sphinx directives that are in the original file. index_duplicate.md is included in the main toctree of index.md, allowing the user to access a copy of the landing page from the left navbar.

#### sphinx-build .. ../docs    
builds HTML files based on markdown files 

#### touch ../docs/.nojekyll


#### rm -r  jupyter_execute


#### rm -r ../jupyter_execute


#### rm -r ../_static


#### rm -r ../utilities/output


#### rm ../index_duplicate.md


### conf.py