#!/bin/bash -e
targetDir=src
componentName="$1"
scriptDir="$(cd "$(dirname "$0")" && pwd)"

if [ -z "$componentName" ]; then
  echo "$0 [componentName]" >&2
  exit 1
fi

cp -R "$scriptDir/templates/Component" "$targetDir/$componentName"

find "$targetDir/$componentName" -type f -print0 | \
  xargs -0 sed -i '' "s/{{componentName}}/$componentName/g"
