#!/bin/bash

for jpgfile in *.jpg; do
	pngfile=`basename "${jpgfile%.*}"`
	pngfile+=".png"
	convert $jpgfile $pngfile
	sleep 5
	mv $jpgfile ./originals
	echo "Moved and converted $jpgfile!"
done
