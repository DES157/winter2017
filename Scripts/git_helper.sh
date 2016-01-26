#
#
#
#

# bomb out if any errors
set -e

# Make your life easier by setting these
#git config --global push.default simple

# Get GH name and repo
echo Enter your GitHub user name and press [ENTER]:
read github_user
echo Enter the name of the repository and press [ENTER] \(no spaces or underscores allowed\!\):
read repo_name


# create local directory and change into it
mkdir $repo_name
cd $repo_name

git init
git checkout -b gh-pages
echo .DS_Store > .gitignore
git add .
git commit -m "Initial commit"

# -u is username, -d sends POST data
curl -u "$github_user" https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
git remote add origin https://github.com/$github_user/$repo_name.git

git push -u origin gh-pages
