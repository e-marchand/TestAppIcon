#!/bin/bash

iconPath=../TestAppIcon/AppIcon.icon

basename="${iconPath##*/}"
appIcon="${basename%.*}"
pListName=./actool.plist
outputdir="./"

mkdir -p "$outputdir"

xcrun actool \
 --compile "$outputdir" \
 --app-icon "$appIcon" \
 --output-partial-info-plist "$pListName"  \
 --platform macosx \
 --minimum-deployment-target 10.13 \
 --notices --warnings --errors \
  "$iconPath"
