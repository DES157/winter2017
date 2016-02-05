Best Practices
==============


Structuring your workspace
--------------------------

You should create a single directory where you will keep all of your DES 157 course work. It would suggest keeping this directory on your desktop.

This code will create that folder and make it your working directory:

    cd ~/Desktop  # changed directory to Desktop
    mkdir des157  # create des157 directory
    cd des157     # move into that directory

Within this folder you should have directories for each of your exercises (name them `ex1`, `ex2`, etc.) and project code (name it `project`). __Each of these directories should be separate git repositories, and should correspond to separate repositories/projects on GitHub!__ Be careful not to have nested folders, such has having an `ex2` directory which is contained in `ex1`, since this can cause confusion when managing your files using git.


