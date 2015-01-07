#!/bin/bash

echo "Preparing compojoom development tools"

# Set up git
git config --global user.name "Yves Hoppe"
git config --global user.email "yves@compojoom.com"

# TODO add ssh key
git clone git@github.com:compojoom/lib_compojoom.git
git clone git@github.com:compojoom/buildtools.git
git clone git@github.com:compojoom/cmc.git
git clone git@github.com:compojoom/conepage.git
git clone git@github.com:compojoom/cmandrill.git
git clone git@github.com:compojoom/cflappy.git
git clone git@github.com:compojoom/lib_cmandrill.git
git clone git@github.com:compojoom/ctransifex.git
git clone git@github.com:compojoom/jedchecker.git
git clone git@github.com:compojoom/Ctemplate.git
git clone git@github.com:compojoom/CUpdater.git
git clone git@github.com:compojoom/cnotes.git

# private
git clone git@github.com:compojoom/Matukio.git
git clone git@github.com:compojoom/Hotspots.git
git clone git@github.com:compojoom/CComment.git
git clone git@github.com:compojoom/Tiles.git

# Symlinking
symlinker Matukio/source /projects/www/j33d
symlinker Matukio/source /projects/www/j25d
symlinker lib_compojoom/source /projects/www/j33d
symlinker lib_compojoom/source /projects/www/j25d
symlinker Hotspots/source /projects/www/j33d
symlinker Hotspots/source /projects/www/j25d


echo "Symlinking complete"
