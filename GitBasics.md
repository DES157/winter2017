Git Basics
==========


There are tons of Git learning resources available online, but here are a few to start out with:

-  [Try Git](https://www.codeschool.com/courses/try-git) is a nice short interactive tutorial at Code School which will introduce you to the basics.
- [Basic Git Workflow](https://www.codecademy.com/en/courses/learn-git/lessons/git-workflow/resume) is a nice short interactive tutorial, part of Codecademy's Learning Git Course.
- [git - the simple guide](https://rogerdudler.github.io/git-guide/)
- [Git for Beginners](http://www.sitepoint.com/git-for-beginners/)



A Simple Workflow
----------------
  
Once your file are on GitHub (see instructions [here](GitHubPages)) updating them is very simple. Before you start, open a terminal and `cd`  to your project directory. You should already be on the `gh-pages` branch, but make sure.

1. See what has changed:

    ```bash
    git status
    ```
    
    This will list modified files under `Changes not staged for commit`. You can optionally run `git diff` to see exactly what has changed. 
    
    If you have added a new file it will show up under `Untracked files`. This means that Git does not yet know to keep an eye on that file.
    
2. Choose which modified files you would like to add to the next commit, or which new files you would like to start tracking:

    ```bash
    git add FILE
    ```

    If you would like to stage all file modifications, additions, and deletions then you can simply do:

    ```bash
    git add .
    ```

3. Commit your files locally
    
    ```bash
    git commit -m "Your message here"
    ```
    
4. Push your files to GitHub

    ```bash
    git push
    ```
    

 
 
Branches
--------

Git tracks the history 
 



Remotes
-------


##### How do I change 

```
git remote rm origin
```


