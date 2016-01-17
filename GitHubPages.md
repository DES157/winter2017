GitHub Pages
============


These instructions should get your web page hosted on GitHub Pages.

We will assume that your code is not yet under version control.

Before you follow these steps you should set up Git as described [here](GitSetup).

1. Make sure all of your files are in a folder (e.g. named `ex1`).

    From Terminal (OS X) or Git Bash (Windows) change to that directory:

    ```bash
    cd path/to/ex1
    ```

   Note: you will need to replace `path/to/ex1` with the actual path to the directory containing your files. E.g. `cd ~/Desktop/ex1` if the directory is on your desktop. Type `ls` to see that your files are there, and `pwd` to see its path.

2. As demonstrated in class, create a new repository on GitHub by following the instructions on [Creating a new repository](https://help.github.com/articles/creating-a-new-repository/). Make repository _public_ and do not choose any of the other options.

    You will need to create a new repository on GitHub for each exercise you do, so change `ex1` to the appropriate name as you follow these instructions.

3. Follow instructions on [Adding an existing project to GitHub using the command line](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/).

    Note: Repositories can be accessed by HTTPS or SSH. Unless you have experience with SSH you should choose the HTTPS option for now.

    If your username is `johndoe` and the repository you created on GitHub is called `ex1` then issuing the following commands will create a local git repository, add your files to it, and then push them to GitHub:

    ```bash
    git init
    git add .
    git commit -m "Initial commit"
    git remote add origin https://github.com/johndoe/ex1.git
    git checkout -b gh-pages
    git push --all -u origin
    ```

    Note: if you are using a Mac execute the following line before the above block of code (this will cause Git to ignore unnecessary `.DS_Store` files):
    
    ```bash
    echo .DS_Store > .gitignore
    ```
    
    Your site should now be available on the web at `http://johndoe.github.io/ex1`

    Note: When you host a project site with GitHub Pages (as opposed)

    Optional: after running `git add .` try `git status` to see that your files are listed under "Changes to be committed"
    
##### If your site is already managed by Git

The above instructions take you through the process of creating a new repository from scratch. If you are already using Git to manage your code on your local computer then all you need to do is:

1. Go to GitHub and create a new repo (step 2 above).

2. Create a `gh-pages` branch if you do not have one already:

    ```bash
    git checkout -b gh-pages
    ```
    
    Note: make sure to commit any changes first. You should now be doing your develpment in the `gh-pages` branch (if you do `git branch` you should see `gh-pages` and there should be a `*` by it).

3. Connect your local repository to GitHub and push to it:

```bash
git remote add origin https://github.com/johndoe/myrepo.git
git push --all -u origin
```

