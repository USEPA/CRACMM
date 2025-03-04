# Sphinx Usage in the CRACMM Repository 

## Process to Build HTML
When changes are made to the main branch of the CRACMM repository, new HTML will need to be generated in order to stay up to date with the latest version. This is true regardless of whether the changes are made to markdown files used for documentation or any file that could be downloaded directly via link anywhere on the website. In other words, HTML should ALWAYS be rebuilt every time a change is made, regardless of how small of a change it is. The steps for generating the new HTML and making them live on the CRACMM GitHub Pages website are listed below:  

1. Make sure you have an environment correctly set up to run Sphinx on the CRACMM repository. If you do not or you are unsure, click [here](#sphinx-and-environment-setup) for more details.

2. In the remote USEPA/CRACMM repository on GitHub, make sure that the changes that have been made in the main branch are mirrored in the CRACMMdocs branch. This will result in the two branches being identical with the exception of the CRACMMdocs branch having additional directories called `docs` and `sphinx`, and additional files called `conf.py` and `.gitignore`.  

3. Clone a copy of the CRACMM repository to your work directory on atmos, or, if you already have a local version attached to the USEPA/CRACMM repository, make sure that all branches are up to date with the remote repository on GitHub.

4. Once in your local directory containing the CRACMM repository, enter the commands `git switch CRACMMdocs` followed by `cd sphinx`.

5. To generate the HTML, run the command `./run_build.csh`. You can run this command multiple times if additional changes are made to the repository.
    * This c-shell script runs a series of commands that prepares the repository for the HTML building, builds the HTML using the `sphinx-build` command, and then runs another series of commands that cleans up the repository after the build process is complete. For more information on each command within the script, click [here](#sphinxrun_buildcsh).
    * If you have not run the `run_build.csh` script before, you may need to change the file access permissions by entering the command `chmod u+x run_build.csh` in order to run it correctly.

6. You should now have your updated HTML in the docs folder of the repository! To make the changes live on the GitHub Pages site, push the new version of the CRACMMdocs branch with the updated HTML up to the remote CRACMM repository on GitHub using the command `git push -u origin CRACMMdocs`.

7. If any changes to files that are also on the main branch are made locally on atmos during the above process, make sure to update the changes made in CRACMMdocs on the main branch as well.


## Sphinx and Environment setup


## Descriptions of Important Sphinx Files

### sphinx/run_build.csh

#### rm -r ../docs/*
Cleans out the directory where HTML documentation is stored to guarantee a fresh start on the HTML every time

#### mkdir ../_static
Prevents a build warning related to there not being a "_static" directory when running the sphinx-build command. this does not affect the resulting HTML in any way, it simply removes the warning.

#### mkdir ../utilities/output
Creates a directory for Jupyter Notebook output files to be temporarily stored while the notebooks are executed during the sphinx-build command. The files put here are not needed and this directory is deleted after the sphinx-build command is completed.

#### python3 duplicate_index.py    
Makes a duplicate of index.md called index_duplicate.md. The duplicate that is created does not contain the toctree sphinx directives that are in the original file. index_duplicate.md is included in the main toctree of index.md, allowing the user to access a copy of the landing page from the left navbar.

#### sphinx-build .. ../docs    
Builds HTML files based on markdown files. This is where sphinx actually operates on the CRACMM repository. It takes input from the root directory of the repsoitory (hense the `..`, which is the relative path to the root directory from the sphinx directory) and produces output files in the docs directory (hense the `../docs`, which is the relative path to the docs directory from the sphinx directory).

#### touch ../docs/.nojekyll


#### rm -r  jupyter_execute


#### rm -r ../jupyter_execute


#### rm -r ../_static


#### rm -r ../utilities/output


#### rm ../index_duplicate.md


### conf.py



---
    author: Michael Pye (pye.michael@epa.gov)
    date: 2025-03-04
---