#!/bin/sh
rm -rf ./dist
mkdir ./dist
mkdir ./dist/css
# Could do this programatically, and probably should for large projects.
# Decided not to for this small project.
mkdir ./dist/cats
mkdir ./dist/dogs
mkdir ./dist/small_pets
# Sass multifile mode doesn't work in this Nix package.
shopt -s nullglob
for f in src/scss/*.scss
do 
  nf=${f%.scss}.css
  nf=${nf##*/}
  sass "$f" "dist/css/$nf"
done
cp ./src/*.html ./dist/
cp ./src/cats/*.html ./dist/cats
cp ./src/dogs/*.html ./dist/dogs
cp ./src/small_pets/*.html ./dist/small_pets
# cp -r ./src/js ./dist/
cp -r ./src/media ./dist/
