Git Basics
==========


__Mac__ users should have `git` installed already. __Windows__ users should install [Git for Windows](https://git-scm.com/download/win) and accept the installer defaults. Make sure that "Use Git Bash only" is selected when you reach that part of the installer.


Setting up Git
--------------

### Setting Variables

Before you begin it's good to let Git know who you are.  From Terminal (OS X) or Git Bash (Windows) type these commands, but with your information instead of John Doe's:

    git config --global user.name "John Doe"
    git config --global user.email johndoe@example.com

You should also run this command to properly set `push` behavior (don't worry if this does't make sense right now):

    git config --global push.default simple

See [First-Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) for more details.
