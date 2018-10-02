#!/bin/bash

rm -rf _site

# if you're using Github Pages as andimiya.github.io, replace 'gh-pages' below with 'master'
git clone -b master `git config remote.origin.url` _site
bundle exec jekyll serve
cd _site
cp ../index_type.html Publications/
git add .
git rm deploy_script.sh
git rm minimal-mistakes-jekyll.gemspec
echo minimal-mistakes-jekyll.gemspec >> .gitignore
echo deploy_script.sh >> .gitignore
#git commit -m "Fixed the page order"
git commit -m "With theme minimal mistake"
git push
