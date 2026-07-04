#!/bin/bash

extras=" --arg version $(jq --version)"

if [ -f "src/$1.js" ]
then
	extras="$extras --rawfile javascript src/$1.js"
else
	extras="$extras --argjson javascript false"
fi

if [ -f "src/$1.css" ]
then
	extras="$extras --rawfile css src/$1.css"
else
	extras="$extras --argjson css false"
fi

jq --from-file src/$1.jq.xml --null-input | jq --from-file $2 $extras --raw-output
