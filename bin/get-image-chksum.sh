#!/bin/sh

IMG=$1
IMG_PARENT="$(dirname "$IMG")"
CHKSUMFILE="$IMG_PARENT/../SHA256SUMS"
LINE="/$(basename "$IMG_PARENT")/$(basename "$IMG")"
#echo $CHKSUMFILE
#echo $LINE
curl -s "$CHKSUMFILE" | grep "$LINE" | cut -d' ' -f1
