#!/bin/bash
oldversionline=$(sed -n '2p' blueprint.yaml)
IFS=" "
set - $oldversionline
newversion=$(($2 + 1))
echo $newversion
newversionline="version: "$newversion
echo $newversionline
sed "s/$oldversionline/$newversionline/" blueprint.yaml
