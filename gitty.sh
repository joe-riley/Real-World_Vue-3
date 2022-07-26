#!/bin/bash

echo "Create a new branch after making changes to the one you are on already."

echo -n "Current branch: "
read cur_branch
actual_branch=`git rev-parse --abbrev-ref HEAD`

if [ "$cur_branch" != "$actual_branch" ]; then
  echo "Are you sure you are on the right branch?"
  echo -e "\tYou entered \"$cur_branch\" but the branch git is on is \"$actual_branch\"."
  echo -e "\tExiting. Please start over."
  exit 0
fi

echo -n "New branch name: "
read new_branch

echo "Commit message:"
read new_branch_commit_message

echo -n "Branch to change to: "
read end_branch

git stash
git checkout -b $new_branch
git stash pop
git add -a
git commit -m "$new_branch_commit_mesage"
git checkout $end_branch
