GitHub Pages
============

Host Web Pages On GitHub
------------------------

These instructions should get your web page hosted on GitHub Pages. This process only needs to be followed once for each. After that you can update your files and your GitHub repository as described [here](GitBasics).

If you have not already done so you should set up Git as described [here](GitSetup).


### Starting from scratch

We will assume that your code is not yet under version control (if it is then skip to the section below).

1. Make sure all of your files are in a folder (e.g. named `ex1`).

    From Terminal (OS X) or Git Bash (Windows) change to that directory:

        cd path/to/ex1

   Note: you will need to replace `path/to/ex1` with the actual path to the directory containing your files. E.g. `cd ~/Desktop/ex1` if the directory is on your desktop. Type `ls` to see that your files are there, and `pwd` to see its path.

2. As demonstrated in class, create a new repository on GitHub by following the instructions on [Creating a new repository](https://help.github.com/articles/creating-a-new-repository/). Make repository _public_ and do not choose any of the other options.

    __You will need to create a new repository on GitHub for each exercise you do__, so change `ex1` to the appropriate name as you follow these instructions.
    
    After creating your empty repository you should see instructions for "Quick setup". You should see a link that starts with `https://github.com`. You will need to copy this link to complete the steps below.
    
    Note: if the link begins with `git@github.com` then click `HTTPS` to get the correct link.

3. Create a local repository and upload it to GitHub (see [Adding an existing project to GitHub using the command line](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/) for more information).

    Note: if you are using a Mac execute the following line before the above block of code (this will cause Git to ignore unnecessary `.DS_Store` files):

        echo .DS_Store > .gitignore
    
    Issuing the following commands will create a local git repository, add your files to it, and then push them to GitHub (Replace `johndoe` with your GitHub username, and `ex1` with the name of the repository you created on GitHub):
    
        git init
        git checkout --orphan gh-pages
        git add .
        git commit -m "Initial commit"
        git remote add origin https://github.com/johndoe/ex1.git
        git push -u origin gh-pages

    Your site should now be available on the web at `http://johndoe.github.io/ex1` (if your html file is not named `index.html` you must append it to this URL).

    Note: When you host a project site with GitHub Pages the files in the the `gh-pages` branch are served as a web site at `http://USERNAME.github.io/REPO`.

    Optional: after running `git add .` try `git status` to see that your files are listed under "Changes to be committed".
    
See [here](GitBasics) for how to update your repository.
    
### If your site is already managed by Git

The above instructions take you through the process of creating a new repository from scratch. If you are already using Git to manage your code locally (i.e. you have done `git init/add/commit`) then all you need to do is:

1. Go to GitHub and create a new repo (step 2 above).

2. Create a `gh-pages` branch if you do not have one already:

        git checkout -b gh-pages
    
    Note: make sure to commit any changes first. You should now be doing your development in the `gh-pages` branch (if you do `git branch` you should see `gh-pages` and there should be a `*` by it). You may also want to remove your master branch to avoid confusion (`git branch -d master`).

4. Connect your local repository to GitHub and push to it:

        git remote add origin https://github.com/johndoe/myrepo.git
        git push -u origin gh-pages

#### Updating your code

Once your repository is set up and synchronized with GitHub see this simple [workflow](GitBasics) for taking snapshots of your code and pushing changes to GitHub.

---

Hints
-----
##### Link to your page from repo

At the top of your repository page on GitHub (URL like `https://github.com/USERNAME/REPO`) you can click `Edit` (_No description or website provided_. — Edit) and add the URL of the correponding web site (`https://USERNAME.github.io/REPO/index.html`)

##### Considerations

You use the command `git pull` to bring changes from your remote repsitory (in this case GitHub) into your local repository. When you are working on a project alone and from only one computer you may not ever have to pull, but if you are collaborating with others you should do this often.

---

Troubleshooting
---------------

If you are having problems, see [Troubleshooting GitHub Pages](GitHubPagesTroubleshooting) and/or [Troubleshooting Git](GitTroublshooting).
