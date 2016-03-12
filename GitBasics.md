Git Basics
==========


There are tons of Git learning resources available online, but here are a few to start out with:

-  [Try Git](https://www.codeschool.com/courses/try-git) is a nice short interactive tutorial at Code School which will introduce you to the basics.
- [Git Reference](http://gitref.org/) - concise introduction, consider this essential reading, especially [_Getting and Creating Projects_](http://gitref.org/creating/) and [_Basic Snapshotting_](http://gitref.org/basic/)
-  [Version Control With Git @ Software Carpentry](https://swcarpentry.github.io/git-novice/)
- [Basic Git Workflow](https://www.codecademy.com/en/courses/learn-git/lessons/git-workflow/resume) is a nice short interactive tutorial, part of Codecademy's Learning Git Course.
- [git - the simple guide](https://rogerdudler.github.io/git-guide/)
- [Git for Beginners](http://www.sitepoint.com/git-for-beginners/)
- [Visualizing Git Concepts with D3](http://www.wei-wang.com/ExplainGitWithD3/)
- [Think Like A Git](http://think-like-a-git.net/)
- [Introduction to Git with Scott Chacon of GitHub @ YouTube](https://youtu.be/ZDR433b0HJY)
- [Good Resources for Learning Git and GitHub
](https://help.github.com/articles/good-resources-for-learning-git-and-github/)
- [Tutorials @ Atlassian](https://www.atlassian.com/git/tutorials) - especially [Getting Started](https://www.atlassian.com/git/tutorials/setting-up-a-repository) and [Collaborating](https://www.atlassian.com/git/tutorials/syncing/git-remote).

##### Cheat Sheets

- [Git Cheat Sheet](https://training.github.com/kit/downloads/github-git-cheat-sheet.pdf)

##### Git for Education

- [Using Git in the classroom](https://opensource.com/education/16/1/git-education-classroom)



A Simple Workflow
-----------------
  
Once your file are on GitHub (see instructions [here](GitHubPages)) updating them is very simple. The basic process is to _add_ changes to the staging area, _commit_ the changes locally, then _push_ the updates to your remote repository (e.g. GitHub).

__Important: Do not edit your files directly on the GitHub website!__

Before you start, open a terminal and `cd`  to your project directory (e.g. `cd ~/Desktop/des157/ex1`). __It is important that you issue all git commands from within the proper directory!__ You should already be on the `gh-pages` branch (to make sure do `git branch`, `gh-pages` should be listed and it should have a `*` by it).

1. See what has changed:

        git status
    
    This will list modified files under `Changes not staged for commit`. You can optionally run `git diff` to see exactly what has changed. 
    
    If you have added a new file it will show up under `Untracked files`. This means that Git does not yet know to keep an eye on that file.
    
2. If you would like to stage all file modifications, additions, and deletions then you can simply do:

        git add .

    Alternatively, you can individually choose which modified files you would like to add to the next commit, or which new files you would like to start tracking:

        git add FILE

3. Commit your files locally, providing a brief but informative message summarizing the changes you made:
    
        git commit -m "Your message here"

4. Push your files to GitHub:

        git push

How To
------

### Manipulating Files

GitHub Help has excellent help on [manipulating files](https://help.github.com/categories/manipulating-files/). Here are some important important tasks and how to do them...


#### Adding Files

For more information see: [Adding a file to a repository from the command line](https://help.github.com/articles/adding-a-file-to-a-repository-from-the-command-line/)



#### Moving Files

The proper way to move or rename files with git is:

    git mv <source> <destination>

Then `commit` and `push` as usual.

For more information see: [Moving a file to a new location using the command line](https://help.github.com/articles/moving-a-file-to-a-new-location-using-the-command-line/).

#### Deleting Files

Tell git you would like to delete a file from your repository:

    git rm <file>

Then `commit` and `push` as usual.
