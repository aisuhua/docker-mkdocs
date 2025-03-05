#!/bin/sh

set -xe

if [ -z "$REPO_URL" ]; then
  echo "REPO_URL cannot be empty."
  exit 1
fi

if [ -z "$DEPLOY_DIR" ]; then
  DEPLOY_DIR=/site
fi

REPO_NAME=$(echo "$REPO_URL" | sed 's#.*[:/]\([^/]\+\)\.git#\1#')
BUILD_DIR=/tmp

cd $BUILD_DIR
rm -rf $REPO_NAME
git clone $REPO_URL
cd $REPO_NAME
mkdocs build
rsync -az --delete $BUILD_DIR/$REPO_NAME/site/ $DEPLOY_DIR/
