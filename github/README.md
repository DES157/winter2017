# github utilities

`github_backup.py`
: Reads a file (`github_usernames`) where each line contains a github username and clones all of the user's repos, leaving them checked out on the `gh-pages` branch.

`github_forks.py`
: Get all the forks of the specified repo.

Note: be careful of GitHub API limits and response sizes (one request may not be enough).

### preprocessing

It may be useful to use `sed` to extract usernames from a list of URLs. For example, if each line looks like:

    ...http://USERNAME.github.io...

To chop off the start of line up through `https://`:

    sed 's/.*https:\/\///' github_usernames

Note: no `^` is necessary here to match start of line since sed works linewise, and no `g` flag is required with the `s` function since we only need to match one occurrence per line. 

To chop off the `.gitub` until the end of the line:

    sed 's/\.github.*//' github_usernames

Note: no `$` is need to match the end of the line since sed works linewise.
