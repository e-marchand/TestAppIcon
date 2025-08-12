#!/bin/bash

iconPath=../TestAppIcon/AppIcon.icon
pListName=./actool.plist
outputdir="."
appIcon="AppIcon"

xcrun actool \
 --compile "$outputdir" \
 --app-icon "$appIcon" \
 --output-partial-info-plist "$pListName"  \
 --platform macosx \
 --minimum-deployment-target 10.13 \
 --notices --warnings --errors \
  "$iconPath"
