# git-scripts
Powershell and bash scripts for finding merged and not merged branches, mass delete branches, export git history

Use the following powershell and bash scripts to get all merged branches in the 'master' branch and delete them:
https://github.com/alinruscior/git-scripts/blob/master/powershell/DeleteAllMergedBranches.ps

https://github.com/alinruscior/git-scripts/blob/master/bash/DeleteAllMergedBranches.sh

Use the following powershell and bash scripts to get all not merged branches in the 'master' branch and delete them:
https://github.com/alinruscior/git-scripts/blob/master/powershell/DeleteAllNotMergedBranches.ps

https://github.com/alinruscior/git-scripts/blob/master/bash/DeleteAllNotMergedBranches.sh

Use the following powershell and bash scripts that get all the merged and not merged branches in the 'master' branch together with details:  last commit hash, date of last commit, author of last commit and writes the data in a csv (branches.csv) can be found here: 
https://github.com/alinruscior/git-scripts/blob/master/powershell/ExportLastCommitDetailsForAllBranches.ps

https://github.com/alinruscior/git-scripts/blob/master/bash/ExportLastCommitDetailsForAllBranches.sh

Sample output (tabs were used here for better visibility in the Readme file, in the csv ',' is the delimiter):

Branch Name   Is Merged in master   Commit Hash                               Last Change                   Author

branch1 	    Yes 	                3719af0f501dbaa505452a72674e2dd7ef4c8251 	2/19/2020 4:32:14 PM +02:00 	Alin Ruscior

branch2 	    No 	                  810b575410878bc9beb227db906863be04abcfcb 	2/18/2020 6:50:00 PM -08:00 	Alin Ruscior

branch3 	    No  	                ba050288be3eb6a5d0be50c62d7421631a03253d 	2/18/2020 6:10:09 PM -08:00 	Alin Ruscior
