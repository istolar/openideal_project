#!/usr/bin/env bash

docroot=$(pwd)

# Add git hooks to our both git repositories.
cp scripts/git_hooks/* .git/hooks/
cp scripts/git_hooks/* web/profiles/contrib/idea/.git/hooks/

# Remove sample files.
cd scripts/git_hooks
for file in *; do
  sample="$file.sample"
  rm -f "$docroot/.git/hooks/$sample"
  rm -f "$docroot/web/profiles/contrib/idea/.git/hooks/$sample"
done
