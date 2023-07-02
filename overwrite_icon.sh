#!/bin/bash

source_file="/16x16/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/16x16/apps"
source_file="/16x16@2x/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/16x16@2x/apps"
source_file="/24x24/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/24x24/apps"
source_file="/24x24@2x/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/24x24@2x/apps"
source_file="/32x32/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/32x32/apps"
source_file="/32x32@2x/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/32x32@2x/apps"
source_file="/48x48/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/48x48/apps"
source_file="/48x48@2x/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/48x48@2x/apps"
source_file="/512x512/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/512x512/apps"
source_file="/512x512@2x/apps/io.elementary.appcenter.png"
destination_folder="/usr/share/icons/hicolor/512x512@2x/apps"

if [ "$(id -u)" -ne 0 ]; then
  echo "This script needs to be run with sudo or as root."
  exit 1
fi

if [ -f "$source_file" ]; then
  cp "$source_file" "$destination_folder"
  echo "File overwritten successfully!"
else
  echo "Source file not found."
fi
