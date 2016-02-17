# Automate creation of GitHub repo and 
#
# Spencer Mathews
# 1/2016

# Links
# https://developer.github.com/v3/repos/
# https://gist.github.com/caspyin/2288960

# bomb out if any errors
set -e

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
#curl -u "$github_user" https://api.github.com/user/repos -d '{"name":"'$repo_name'"}'
curl -u "$github_user:$token" https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"  # > /dev/null 2>&1
git remote add origin https://github.com/$github_user/$repo_name.git

git push -u origin gh-pages  #  > /dev/null 2>&1


# Etc
# hub
# https://hub.github.com/
# A Bash function
# https://viget.com/extend/create-a-github-repo-from-the-command-line
#