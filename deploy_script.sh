#!/bin/bash

rm -rf _site

# if you're using Github Pages as andimiya.github.io, replace 'gh-pages' below with 'master'
git clone -b master `git config remote.origin.url` _site
bundle exec jekyll serve
cd _site
cp index_year.html _site/publications/
git add .
#git commit -m "Fixed the page order"
git commit -m "Added option for publication sorting"
git push
cd ..
