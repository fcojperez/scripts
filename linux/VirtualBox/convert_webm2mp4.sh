#!/bin/bash
# Este script es para la conversión de todos los ficheros *.webm en *.mp4
# Los ficheros *.webm son videos de captura de pantalla de Virtual Box

# This script convert webm files in to mp4 files
# The webm files are videos generated by Virtual Box

# Author: Paco Perez, fcojperez@gmail.com

for f in *.webm
do
	ffmpeg -i "$f" "$f.mp4"
done
