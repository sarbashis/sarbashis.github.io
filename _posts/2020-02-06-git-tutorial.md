---
title: "Git Tutorial"
comments: true
categories:
  - classfication
tags:
  - ML
---

# Step 1: Create a local git repository

    git init

<img src="/assets/images/git_init.png" alt="git Init" width="1000"/>


# Step 2: Add a new file to the repository

  Create a new file using touch

    >touch first.txt

# Step 3: Add a file to staging environment

By doing this you have created a new file but git is not aware of this file. So we need to add them to the staging environment using the following command

    >git add first.txt

# Step 4: Create a commit:

By creating a commit the git track the changes that you have made. The following command is used to commit


    >git commit -m "first commit"

Here "-m" is the message that you want to add to the commit.

# Step 5: Create a new branch:
Let create a new branch in this repository or repo


    >git branch <name>

use

    >git config --global pager.branch false

for showing the branch in the same place.

    git branch my-first-branch
    git branch -v

    * master          c143fc1 Merge branch 'master' of https://github.com/sarbashis/Gittutorial
    * my-first-branch c143fc1 Merge branch 'master' of https://github.com/sarbashis/Gittutorial

# Step 6: Create a new repo in GitHub
Login to GitHub and create a repo. Then use the following command to connect the repo to the local repository


    >git remote add origin https://github.com/sarbashis/Gittutorial.git

Check if remote added or not by the following command

      >git remote -v
Next push the existing master to the remote repo by using

    >git push -u origin master

if you get error message like below then use the command
__fatal: refusing to merge unrelated histories__

    >git pull origin master --allow-unrelated-histories

# Step 7: Push the local changes in the remote

    >git push --set-upstream origin master

# Step 8: Create a Pull request
Follow the step in GitHub to create a pull request and merge
after that

    >git pull origin master


# Step 9: Git Log

git log will show the commit histories

    >git log

    # git log with patches and limit to most recent two
    > git log -p -2

    #pretty oneline
    git log --pretty=oneline
    git log --oneline
    git log --oneline --decorate --graph

    #This one is use for release annoucement where commits are grouped by authors

    > git shortlog
# Advance tips

## Change most recent Git commit message

    >git commit --amend -m "an updated commit message"

  Changing committed files
 The following example demonstrates a common scenario in Git-based development. Let's say we've edited a few files that we would like to commit in a single snapshot, but then we forget to add one of the files the first time around. Fixing the error is simply a matter of staging the other file and committing with the --amend flag:

    >git commit --amend --no-edit

 *Cautions*: Don’t amend public commits. Be cautious when using --amend on commits shared with other team members. Amending a commit that is shared with another user will potentially require confusing and lengthy merge conflict resolutions.


 ## Changing older or multiple commits

 # Rebasing
 Rebasing is a process of combining or moving a sequence of commits
 to a new base commit. Rebasing is most useful and easily visualized in the context of feature brach workflow.

Rebasing actualy changing the base of the branch to a new commit and it appear that the brach was derived from the new commit.


So what is the use of rebasing?
The primary reason of rebasing is to maintain a linear project history. Let assume that after branching out from master, the master progressed since you started working on the branch.
