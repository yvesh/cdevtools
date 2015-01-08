#!/bin/bash
echo "Creating symlinks"

symlinker /projects/Matukio/source /projects/www/j33d
symlinker /projects/Matukio/source /projects/www/j25d
symlinker /projects/lib_compojoom/source /projects/www/j33d
symlinker /projects/lib_compojoom/source /projects/www/j25d
symlinker /projects/Hotspots/source /projects/www/j33d
symlinker /projects/Hotspots/source /projects/www/j25d
symlinker /projects/CComment/source /projects/www/j33d
symlinker /projects/CComment/source /projects/www/j25d
symlinker /projects/Tiles/source /projects/www/j33d
symlinker /projects/Tiles/source /projects/www/j25d
symlinker /projects/cmc/source /projects/www/j33d
symlinker /projects/cmc/source /projects/www/j25d
symlinker /projects/lib_cmandrill/source /projects/www/j33d
symlinker /projects/lib_cmandrill/source /projects/www/j25d
symlinker /projects/cmandrill/source /projects/www/j33d
symlinker /projects/cmandrill/source /projects/www/j25d

echo "Symlinking complete :-)"
