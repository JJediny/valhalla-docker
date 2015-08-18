#!/bin/sh
for repo in midgard baldr sif mjolnir loki odin thor tyr; do
  if [ ! -d $repo ]
  then
    git clone --recurse-submodules https://github.com/valhalla/$repo.git
  else
    cd $repo
    git pull && git submodule init && git submodule update
    cd ..
  fi
done