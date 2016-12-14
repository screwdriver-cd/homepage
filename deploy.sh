#!/bin/bash -e

source ./ci/git-ssh.sh

rake build

export PUBLISH_DIR=`mktemp -d`
cp -r _site/. $PUBLISH_DIR
pushd $PUBLISH_DIR
git init
git add .
git commit -m "Site updated at `date`"
git remote add origin git@github.com:screwdriver-cd/homepage.git
git push origin master:refs/heads/gh-pages --force
popd
