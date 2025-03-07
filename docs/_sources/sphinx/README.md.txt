# Sphinx Usage in the CRACMM Repository (Only for USEPA employees)

## Process to Build HTML
When changes are made to the main branch of the CRACMM repository, new HTML will need to be generated in order to stay up to date with the latest version. This is true regardless of whether the changes are made to markdown files used for documentation, or any file that could be downloaded directly via link anywhere on the website. In other words, HTML should ALWAYS be rebuilt every time a change is made to a file within the repository, regardless of how small of a change it is. Of course, this is only true of when you would would like the changes to propgate to the website for the user to see. The steps for generating the new HTML and making them live on the CRACMM GitHub Pages website are listed below:  

1. Starting in your home directory (`~/`) on Atmos, activate your environment for running Sphinx on the CRACMM repository by using the command:  
    ```
    source <name of environment>/bin/activate.csh  
    ```
    If you do not have such environment set up, click [here](#sphinx-and-environment-setup) to learn how.  

2. `cd` to the root directory of your local CRACMM repository.

3. If you have made changes on your remote CRACMM repository and your local repository is not up to date, merge the changes into the `main` branch of your local repository. To do this, enter the following commands:  
    ```
    git switch main    #if not already in main
    git merge origin main
    ```
4. Once the `main` branch of the repository is up to date with all the changes you would like to include on the website, you also need to make those changes appear on the `CRACMMdocs` branch. For this to work, you need to already have the `CRACMMdocs` branch on your local repository. If you do not, follow the steps in the bullet points below: 

    * If your remote repository does not have a `CRACMMdocs` branch yet, you will need to sync your remote repository with the USEPA/CRACMM repository.

    * If you do not have a branch called `CRACMMdocs` on your local repository, make one by entering the command:
        ```
        git switch -c CRACMMdocs 
        ```
        You should now be in a new branch called `CRACMMdocs`. Next, to retrieve the files in the remote `CRACMMdocs` branch, run the command:  
        ```
        git pull origin CRACMMdocs
        ```

    To replicate the changes made to `main` on `CRACMMdocs`, enter the commands:
    ```
    git switch CRACMMdocs
    git merge main
    ```
  

5. Next, enter the `sphinx` directory by entering the commands: `git switch CRACMMdocs` followed by `cd sphinx`.

6. Now its time to build the HTML for the website! To do this, run the command: 
    ```
    ./run_build.csh
    ```
    Once the process is complete, you should have your updated HTML in the docs folder of the repository!

    * This c-shell script runs a series of commands that prepares the repository for the HTML building, builds the HTML using the `sphinx-build` command, and runs another series of commands that cleans up the repository after the build process is complete. For more information on each command within the script, click [here](#sphinxrun_buildcsh).

    * If you have not run the `run_build.csh` script before, you may need to change the file access permissions by entering the command:
        ```
        chmod u+x run_build.csh
        ```

    * When running this script, be aware that you may recieve several build warnings from Sphinx. Hopefully, none of them will indicate an issue with the website, but depending on the nature of the updates that were made, these may indicate a problem. With the state of the website at the time of writing, 5-20 warnings is normal and should not mean that there is a problem. Sometimes, the number of warnings can vary even if no change has been made so be aware that the warnings are not always consistant. Also, the number of warnings that can generally be considered "safe" (not indicating an issue) will likely change as the website develops with time. Therefore, always check the warnings to see whether they may represent an issue with the website. 

    * You also may recieve a few warnings from the `rm` command saying that certain files or directories could not be removed. These do not indicate any issues with the build process and can be ignored.

7. Commit the new HTML to the repository by running the commands:
    ```
    git add --all
    git commit
    ```
    Then write the desired commit message.

8. Once the changes have been commited, push the new version of the local `CRACMMdocs` branch with the updated HTML up to the remote CRACMM repository on GitHub using the command:
    ```
    git push -u origin CRACMMdocs
    ```

9. Finally, go back to your remote fork of the CRACMM repository on GitHub and submit a pull request from your `CRACMMdocs` docs branch, with the new HTML, to the USEPA/CRACMM repository. Once the pull request is approved, you will have officially updated the CRACMM documentation!


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

#### `rm ../docs/.doctrees/environment.pickle`
`environment.pickle` is created by the sphinx-build command and ends up in the docs/.doctree directory. `.pickle` files are executable code and can cause security issues when shared with others. This file is deleted to make sure it does not get shared with others. If other `.pickle` files are found, please add another line similar to this one to remove these additional files from being shared with the public.


### conf.py


### index.md



---
    author: Michael Pye (pye.michael@epa.gov)
    date: 2025-03-04
---