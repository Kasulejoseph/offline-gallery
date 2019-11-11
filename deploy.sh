#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directyeory
cd dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/<USERNAME>/<REPO>.git master:gh-pages

cd -