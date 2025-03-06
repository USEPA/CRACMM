# Sphinx Usage in the CRACMM Repository 

## Process to Build HTML
When changes are made to the main branch of the CRACMM repository, new HTML will need to be generated in order to stay up to date with the latest version. This is true regardless of whether the changes are made to markdown files used for documentation, or any file that could be downloaded directly via link anywhere on the website. In other words, HTML should ALWAYS be rebuilt every time a change is made to a file within the repository, regardless of how small of a change it is. Of course, this is only true of when you would would like the changes to propgate to the website. The steps for generating the new HTML and making them live on the CRACMM GitHub Pages website are listed below:  

1. Starting in your home directory (`~/`) on Atmos, activate your environment for running Sphinx on the CRACMM repository by using the command: `source <name of environment>/bin/activate.csh`. If you do not have such environment set up, click [here](#sphinx-and-environment-setup) to learn how.  

2. `cd` to the root directory of your local CRACMM repository.

3. If you have made changes on your remote CRACMM repository and your local repository is not up to date, merge the changes into the `main` branch of your local repository. First, make sure you are in the `main` branch by entering the command: `git switch main`. Then, merge the changes using the command: `git merge origin main`.

4. Once the `main` branch of the repository is up to date with all the changes you would like to include on the website, you also need to make those changes appear on the `CRACMMdocs` branch. Enter the command: `git switch CRACMMdocs`, follwed by: `git merge main` to merge the changes from `main` into `CRACMMdocs` 
    * If you do not have a branch called `CRACMMdocs` on your local repository, make one by entering the command `git switch -c CRACMMdocs`. You should now be in a new branch called `CRACMMdocs`. 

4. Next, enter the commands `git switch CRACMMdocs` followed by `cd sphinx`.

5. Now its time to build the HTML for the website! First, enter the command `cd sphinx` (assuming you are in the root directory of the `CRACMMdocs` branch). Then, run the command `./run_build.csh`. Once the process is complete, you should have your updated HTML in the docs folder of the repository!
    * This c-shell script runs a series of commands that prepares the repository for the HTML building, builds the HTML using the `sphinx-build` command, and runs another series of commands that cleans up the repository after the build process is complete. For more information on each command within the script, click [here](#sphinxrun_buildcsh).
    * If you have not run the `run_build.csh` script before, you may need to change the file access permissions by entering the command `chmod u+x run_build.csh` in order to run it correctly.
    * When running this script, be aware that you may recieve several build warnings from Sphinx. Hopefully, none of them will indicate an issue with the website, but depending on the nature of the updates that were made, these may indicate a problem. With the state of the website at the time of writing, 5-15 warnings is normal and should not mean that there is a problem. However, the number of warnings that do not indicate an issue may change as the website develops with time so always check the warnings to see whether they may represent an issue with the website. 

6.   push the new version of the `CRACMMdocs` branch with the updated HTML up to the remote CRACMM repository on GitHub using the command `git push -u origin CRACMMdocs`.

4. In the remote USEPA/CRACMM repository on GitHub, make sure that the changes that have been made in the main branch are mirrored in the `CRACMMdocs` branch. This will result in the two branches being identical with the exception of the `CRACMMdocs` branch having additional directories called `docs` and `sphinx`, and additional files called `conf.py` and `.gitignore`.


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