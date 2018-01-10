# Git Troubleshooting

__Rule #1__: If you run into problems DO NOT delete your GitHub repository and start over!

---

##### What's with these merge conflicts?

If your remote repository has been updated and you have made commits to your local repository before bringing it up to date by `git pull` then your branches will have diverged.

You can try to fix this by:

    git fetch
    git rebase origin/<branch>

Note: You should double check which branch you are on with `git branch`, and specify it in the command above.

If this does not go smoothly you can back out by:

    git rebase --abort


##### Wrong root

You should not have nested Git repositories (see [Best Practices](Best-Practices))!

When in the root directory for your repository, `pwd` should give you the same output as `git rev-parse --show-toplevel`.

As a first step in sorting this out it will be useful to locate all of your local git repositories. This command will list all of your directories that hold git repositories:

    find ~ -type d -name .git

Now you can identify which are nested.
