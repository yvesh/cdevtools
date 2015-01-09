#!/bin/bash

echo "Preparing compojoom development tools"

# Set up git
git config --global user.name "Yves Hoppe"
git config --global user.email "yves@compojoom.com"

# Credential helper
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=36000'

# https://github.com/compojoom/Matukio.git
git clone https://github.com:compojoom/lib_compojoom.git
git clone https://github.com:compojoom/buildtools.git
git clone https://github.com:compojoom/cmc.git
git clone https://github.com:compojoom/conepage.git
git clone https://github.com:compojoom/cmandrill.git
git clone https://github.com:compojoom/cflappy.git
git clone https://github.com:compojoom/lib_cmandrill.git
git clone https://github.com:compojoom/ctransifex.git
git clone https://github.com:compojoom/jedchecker.git
git clone https://github.com:compojoom/Ctemplate.git
git clone https://github.com:compojoom/CUpdater.git
git clone https://github.com:compojoom/cnotes.git

# private
git clone https://github.com/compojoom/Matukio.git
git clone https://github.com:compojoom/Hotspots.git
git clone https://github.com:compojoom/CComment.git
git clone https://github.com:compojoom/Tiles.git

# Joomla
git clone https://github.com/joomla/coding-standards.git
git clone https://github.com/joomla/joomla-cms.git

# Symlinking
echo "Now execute symlink.sh"
