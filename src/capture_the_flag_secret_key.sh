#!/bin/bash
#
# capture_the_flag_secret_key.sh
#
# Hackerrank Script
# https://www.hackerrank.com/contests/capture-the-flag/challenges/secret-key
#
# Author: 	Rodrigo Alvares de Souza (rsouza01@gmail.com)
# 		
# Copyright (C) 2017 - All Rights Reserved
#
# Permission to copy and modify is granted under the MIT License
# https://en.wikipedia.org/wiki/MIT_License
#
# History:
# Version 1.0: 2017/05/01 (rsouza) - First version

rm -f ./*.txt

for key_temp in $(curl -s https://cdn.hackerrank.com/hackerrank/static/contests/capture-the-flag/secret/key.json | jq 'keys'); do

	#Fetches the key from key.json
	key_temp=$(echo "$key_temp" | tr -dc '[:alnum:]\n\r' | tr '[:upper:]' '[:lower:]')
	
	
	if [ -n "$key_temp" ]; then
	
		#Creates the url
		url="https://cdn.hackerrank.com/hackerrank/static/contests/capture-the-flag/secret/secret_json/${key_temp}.json"

		news_title=$(echo $(curl -s $url | jq '.news_title'))
		
		echo "$news_title" | sed -e 's/^"//' -e 's/"$//' >> news.txt

		echo $url
	fi

done

cat news.txt | LC_COLLATE=C sort > news_sort.txt	
