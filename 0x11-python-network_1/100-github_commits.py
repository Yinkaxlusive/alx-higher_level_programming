#!/usr/bin/python3
"""
Python script that takes repository name and owner name as arguments
and lists 10 most recent commits from the repository by the owner
using the GitHub API.
Uses the requests and sys packages.
"""
import requests
import sys

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: {} <repo> <owner>".format(sys.argv[0]))
        sys.exit(1)

    repo_name = sys.argv[1]
    owner_name = sys.argv[2]
    url = "https://api.github.com/repos/{}/{}/commits".format(owner_name, repo_name)
    response = requests.get(url)
    commits = response.json()
    for commit in commits[:10]:
        sha = commit["sha"]
        author_name = commit["commit"]["author"]["name"]
        print("{}: {}".format(sha, author_name))
