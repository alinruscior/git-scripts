#!/bin/bash

# A script that gets all the merged and not merged branches in the ‘master’ branch together with details:
# last commit hash, date of last commit, author of last commit and writes the data in a csv (branches.csv) 
# Script output example can be found in: git-scripts\SampleHistory.csv
# Note: for this bash script the date of last commit is displayed in the first column

declare -a branches
declare -a mergeStatuses

for branch in `git branch -r --merged master`;
do 
	branches+=( $branch )
	mergeStatuses+=( "Yes" )
done

for branch in `git branch -r --no-merged master`;
do 
	branches+=( $branch )
	mergeStatuses+=( "No" )
done

for i in "${!branches[@]}"; 
do 
	git log --max-count=1 --format="%aI,${branches[i]//origin\//},${mergeStatuses[i]},%H,%an" ${branches[i]}
done | sort -r > branches.csv
