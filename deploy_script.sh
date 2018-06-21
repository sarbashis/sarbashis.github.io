#!/bin/bash

rm -rf _site

# if you're using Github Pages as andimiya.github.io, replace 'gh-pages' below with 'master'
git clone -b master `git config remote.origin.url` _site
bundle exec jekyll serve
cd _site
git add .
git commit -m "Scripted build to gh-pages"
git push
