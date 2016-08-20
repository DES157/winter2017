# Interactively configure git
#
# Intended to be run once to set
# user.name/user.email
#
# Spencer Mathews
# 1/2016

# bomb out if any errors
set -e


echo Enter your GitHub user name and press [ENTER]:
read github_user
git config --global github.user $github_user
# later: set github.token


# test if we are on mac! then
# Create global git ignore
echo '.DS_Store' >> ~/.gitignore

# on pc ignore thumbs.db...

# Make your life easier by setting these
# Accept new 2.0 behavior to stop nagging message
git config --global push.default simple


# Get GH name and repo
echo Enter your GitHub user name and press [ENTER]:
read github_user
echo Enter the name of the repository and press [ENTER] \(no spaces or underscores allowed\!\):
read repo_name

git config --global user.name "John Doe"
git config --global user.email johndoe@example.com

# choose one
#git config --global credential.helper osxkeychain
#git config --global credential.helper wincred

