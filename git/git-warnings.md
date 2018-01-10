# Git Warnings


### Wield your power wisely

The `git init` command will make your current working directory into a local git repository. This creates a hidden `.git` directory in it to store your commit history and repository configuration.

- __Do not issue this command carelessly!__ Beginners would be wise to `pwd` and `ls` to make sure that they are where they intend, and `cd` if needed.
-  This command only needs to be called once for each direcory.
-  Avoid nested git repositories. If `git status` returns anything but an error it means that one of  your parent directories is a git repository already. Resolve this condition before you initialize your directory.
