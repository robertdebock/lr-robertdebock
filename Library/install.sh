#!/bin/sh

developpresetsdir="~/Library/Application\ Support/Adobe/Lightroom/Develop\ Presets"
developpresets="Fujifilm Dehaze"
localdeveloppresetsdir="~/Library/Application\ Support/Adobe/Lightroom/Local\ Adjustments"
cameraprofilesdir="Library/Application\ Support/Adobe/CameraRaw/CameraProfiles"

copydeveloppresets() {
  # Make sure the directory exists.
  test -d ${developpresetsdir} || mkdir ${developpresetsdir}
  
  # Copy all sets into the directory.
  for set in ${developpresets} ; do
    cp Application\ Support/Adobe/Lightroom/Develop\ Presets/${set}/* ${developpresetsdir}/${set}/
  done
  echo "OKAY: Copied development presets."
}

copylocalpresets() {
  # Make sure the directory exists.
  test -d ${localdeveloppresetsdir} || mkdir ${localdeveloppresetsdir}
  
  # Copy local develop presets into the directory.
  cp Application\ Support/Adobe/Lightroom/Local\ Adjustments/* ${localdeveloppresetsdir}/
  echo "OKAY: Copied local development presets."
}

copycameraprofiles(){
  # Make sure the directory exists.
  test -d ${copycameraprofiles} || mkdir ${copycameraprofiles}
  
  # Copy camera profiles into the directory.
  cp Application\ Support/Adobe/CameraRaw/CameraProfiles/* ${cameraprofilesdir}/
  echo "OKAY: Copied camera profiles."
}

echo "OKAY: Done installing."
sleep 5
