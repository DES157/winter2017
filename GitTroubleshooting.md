Troubleshooting Git
===================

__Rule #1__: If you run into problems DO NOT delete your GitHub repository and start over!

---

##### Wrong root

You should not have nested Git repositories (see [Best Practices](BestPractices))!

When in the root directory for your repository, `pwd` should give you the same output as `git rev-parse --show-toplevel`.

As a first step in sorting this out it will be useful to locate all of your local git repositories. This command will list all of your directories that hold git repositories:

    find ~ -type d -name .git

Now you can identify which are nested.
