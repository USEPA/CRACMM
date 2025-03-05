# Sphinx Usage in the CRACMM Repository 

## Process to Build HTML
When changes are made to the main branch of the CRACMM repository, new HTML will need to be generated in order to stay up to date with the latest version. This is true regardless of whether the changes are made to markdown files used for documentation, or any file that could be downloaded directly via link anywhere on the website. In other words, HTML should ALWAYS be rebuilt every time a change is made to a file within the repository, regardless of how small of a change it is. The steps for generating the new HTML and making them live on the CRACMM GitHub Pages website are listed below (skip to step 4 if you have already made changes to the repository and are ready to build HTML):  

1. Make sure you have an environment correctly set up to run Sphinx on the CRACMM repository. If you do not or you are unsure, click [here](#sphinx-and-environment-setup) to learn how.

2. On Atmos, `cd` to the root directory of your local CRACMM repository.

2. Before making any changes to the latest version of CRACMM, fork the USEPA/CRACMM repository, or, if you already have a fork, sync it to the USEPA version. 

3. Merge USEPA/CRACMM main to to your fork main

3. Make desired changes to any file(s) you want to make changes to on the main branch. You can do this either on GitHub or on a cloned version of the repository on atmos. Do not make changes to the CRACMMdocs branch.
    * If you are making the changes directly on GitHub, continue the next steps on atmos either by running `git clone <github repository ssh link>` in your work directory on atmos, or, if you already have a CRACMM repository clone, run `git pull origin` to include the changes you have just made to your remote fork of the CRACMM repository in your local clone of the repository.  
delete

4. Next, `cd` to the root directory of the local CRACMM repository on atmos. Then, enter the commands `git switch CRACMMdocs` followed by `cd sphinx`.
make sure to include new docs branch

5. 

5. To generate the HTML, run the command `./run_build.csh`.
    * This c-shell script runs a series of commands that prepares the repository for the HTML building, builds the HTML using the `sphinx-build` command, and runs another series of commands that cleans up the repository after the build process is complete. For more information on each command within the script, click [here](#sphinxrun_buildcsh).
    * If you have not run the `run_build.csh` script before, you may need to change the file access permissions by entering the command `chmod u+x run_build.csh` in order to run it correctly.

6. You should now have your updated HTML in the docs folder of the repository!  push the new version of the CRACMMdocs branch with the updated HTML up to the remote CRACMM repository on GitHub using the command `git push -u origin CRACMMdocs`.

4. In the remote USEPA/CRACMM repository on GitHub, make sure that the changes that have been made in the main branch are mirrored in the CRACMMdocs branch. This will result in the two branches being identical with the exception of the CRACMMdocs branch having additional directories called `docs` and `sphinx`, and additional files called `conf.py` and `.gitignore`.


## Sphinx and Environment setup


## Descriptions of Important Sphinx Files

### sphinx/run_build.csh

#### `rm -r ../docs/*`
Cleans out the directory where HTML documentation is stored to guarantee a fresh start on the HTML every time `run_build.csh` is run.

#### `mkdir ../_static`
Prevents a build warning related to there not being a "_static" directory when running the sphinx-build command. this does not affect the resulting HTML in any way, it simply removes the warning.

#### `mkdir ../utilities/output`
Creates a directory for Jupyter Notebook output files to be temporarily stored while the notebooks are executed during the sphinx-build command. The files put here are not needed and this directory is deleted after the sphinx-build command is completed.

#### `python3 duplicate_index.py`    
Makes a duplicate of index.md called index_duplicate.md. The duplicate that is created does not contain the toctree sphinx directives that are in the original file. index_duplicate.md is included in the main toctree of index.md, allowing the user to access a copy of the landing page from the left navbar.

#### `sphinx-build .. ../docs`    
Builds HTML files based on markdown files. This is where sphinx actually operates on the CRACMM repository. It takes input from the root directory of the repsoitory (hense the `..`, which is the relative path to the root directory from the sphinx directory) and produces output HTML (and other) files in the docs directory (hense the `../docs`, which is the relative path to the docs directory from the sphinx directory).

#### `touch ../docs/.nojekyll`
Creates a `.nojekyll` file in the docs directory. This is an empty file that tells GitHub Pages that all the HTML styling has been done already and it does not need to go through extra steps to format to jekyll style. If this file is not added to the docs directory, the website styling created by Sphinx will not function. 

#### `rm -r  jupyter_execute`
Removes files created when running the Jupyter Notebooks that are not necessary. This line may cause an error related to there being no file or directory called `jupyter_execute`.

#### `rm -r ../jupyter_execute`
Removes files created when running the Jupyter Notebooks that are not necessary. This line may cause an error related to there being no file or directory called `../jupyter_execute`.

#### `rm -r ../_static`
Removes the `../_static` folder which is not needed in the final output. Click [here](#mkdir-_static) for more details on the purpose of this directory.

#### `rm -r ../utilities/output`
Removes output files created by the code in the Jupyter Notebooks that are not necessary. Click [here](#mkdir-utilitiesoutput) for more details on the purpose of this directory.

#### `rm ../index_duplicate.md`
Removes the duplicate copy of `index.md`, which is not needed for the GitHub repository, only to make the HTML page show up in the table of contents navbar on the left side of each page of the website.


### conf.py



---
    author: Michael Pye (pye.michael@epa.gov)
    date: 2025-03-04
---