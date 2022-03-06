#!/bin/bash

rm -rf _site
#echo "Enter the commit message"
#read message
# if you're using Github Pages as andimiya.github.io, replace 'gh-pages' below with 'master'
git clone -b master `git config remote.origin.url` _site
bundle exec jekyll serve
cd _site
cp ../index_type.html Publications/
git add .
git rm deploy_script.sh
echo deploy_script.sh >> .gitignore
#git commit -m "Fixed the page order"
#echo "Enter Comment"
#read comment
git commit -m "Fixing comment box again"
git push
