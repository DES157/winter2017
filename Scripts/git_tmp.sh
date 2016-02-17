#
#
#
# 


# bomb out if any errors
set -e

# Get GH name and repo
echo Enter your GitHub user name and press [ENTER]:
read github_user
echo Enter the name of the repository and press [ENTER] \(no spaces or underscores allowed\!\):
read repo_name

# List repos
# -u is username, -G causes data to be sent as GET, could instead to --request GET
curl -u "$github_user" https://api.github.com/user/repos -d 'type=owner' -G
