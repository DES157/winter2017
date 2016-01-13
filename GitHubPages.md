GitHub Pages
============


These steps should get your web page hosted on GitHub Pages. But before you do you should set up Git as described [here](GitBasics)

1. Make sure all of your files are in a folder (e.g. named `ex1`).

    From Terminal (OS X) or Git Bash (Windows) change to that directory:

    ```
    cd path/to/ex1
    ```

2. As demonstrated in class, create a new repository on GitHub by following the instructions on [Creating a new repository](https://help.github.com/articles/creating-a-new-repository/). Make repository _public_ and do not choose any of the other options.


3. Follow instructions on [Adding an existing project to GitHub using the command line](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/).

    Note: Repositories can be accessed by HTTPS or SSH. Unless you have experience with SSH you should choose the HTTPS option for now.

    Assuming you are in the `ex1` directory, the following should do the trick. Just make sure to insert your user name where appropriate:

    ```
    git init
    git add .
    git commit -m "Initial commit"
    git remote add origin https://github.com/your_github_user_name/ex1.git
    git branch gh-pages
    git push --all -u origin
    ```

    Note: if you are using a Mac execute the following line before the above block of code:
    
    ```
    echo .DS_Store > .gitignore
    ```

