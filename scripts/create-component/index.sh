#!/bin/bash -e
componentName="$1"
scriptDir="$(cd "$(dirname "$0")" && pwd)"

if [ -z "$componentName" ]; then
  echo "$0 [componentName]" >&2
  exit 1
fi

for targetDir in src stories; do
  cp -R \
    "$scriptDir/templates/$targetDir/components/Component" \
    "$targetDir/components/$componentName"

  find "$targetDir/components/$componentName" -type f -print0 | \
    xargs -0 sed -i '' "s/{{componentName}}/$componentName/g"
done
