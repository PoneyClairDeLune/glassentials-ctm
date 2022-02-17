#!/bin/bash
ls -1 | while IFS= read -r entryName; do
	if [ -d "$entryName" ]; then
		cd "$entryName"
		packName=$(cat packName.conf)
		zip -r9 "../../$packName" ./*
		cd ..
	fi
done
exit