#!/bin/sh
rm -rf ./dist
mkdir ./dist
mkdir ./dist/css
# Sass multifile mode doesn't work in this Nix package.
shopt -s nullglob
for f in src/scss/*.scss
do 
  nf=${f%.scss}.css
  nf=${nf##*/}
  sass "$f" "dist/css/$nf"
done
cp ./src/*.html ./dist/
# cp -r ./src/js ./dist/
cp -r ./src/media ./dist/
