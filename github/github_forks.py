#!/usr/bin/env python2

# Spencer Mathews
# 1/2017
#
# Scrape urls of student forks for des157
#
# see https://developer.github.com/v3/repos/forks/#list-forks for details GET response
#
# https://developer.github.com/v3/#pagination
# https://developer.github.com/guides/traversing-with-pagination/
#
# may need to authenticate using personal access token, or otherwise to overcome API limits

import os
import requests
import json
import subprocess  # use subprocess32 (backport of py3 subprocess)for more involved things

# get list of forks
upstream_url = 'https://api.github.com/repos/des157/des157/forks'
r = requests.get(upstream_url)

# this would be better as an assert I think
if not r.ok:
    print 'GitHub API request failed!'
else:
    # decode json, into a list of dict
    # repos_list = r.json() appears to do the same things and is probably preferred
    repo_list = json.loads(r.text or r.content)
    # verify that r.content is necessary, I think not in this case...

    # each request only returns 30 items, there is a Link key in response header for pagination
    # which is a string of URLs and some combination of rel keys and values including next/last/first/prev
    link = r.headers.get('Link')  # just another way to write r.headers['Link']
    #r = requests.get('https://api.github.com/repositories/78482075/forks?page=1')

    # I don't want to bother doing this properyly, but for now I know we only have 2 pages so doing manually
    payload = {'page': 2}
    r_next = requests.get(upstream_url, params=payload)

    # combine lists, just another way of writing repo_list.append(...)
    repo_list = repo_list+json.loads(r_next.text or r_next.content)    
    print len(repo_list), 'forks'

    # get username and reponame to construct pages url
    f = open('portal_forks', 'w')
    for repo_dict in repo_list:
        login = repo_dict['owner']['login']
        name = repo_dict['name']
        has_pages = repo_dict['has_pages']
        url = repo_dict['url']
        size = repo_dict['size']
        print login+'/'+name, size, 'KB', has_pages

        f.write('https://'+login+'.github.io/'+name+'\n')
    f.close()



