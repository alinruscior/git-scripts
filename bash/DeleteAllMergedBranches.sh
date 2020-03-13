#!/bin/bash

# This script deletes all branches that were merged in the master branch
# If you like to filter for branches that contain a certain text in their name, for example 'test'
# You can use git branch -r --merged master | sed 's/ *origin\///' | grep -v 'master$' | grep 'test'
# Please replace "origin" with the name of your remote, if it is different

getMergedBranches() {
    git branch -r --merged master | sed 's/ *origin\///' | grep -v 'master$'
}

getMergedBranches | xargs git push origin --delete