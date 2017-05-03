#!/bin/bash
#
# capture_the_flag_infinite_links.sh
#
# Hackerrank Script
# https://www.hackerrank.com/contests/capture-the-flag/challenges/infinite-links
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

clear

function extract_links() {
	page_contents=$1
	links=$(echo "$page_contents" | grep -o '<a .*href=.*>' | tr A-Z a-z | tr -d \" | sed 's/.*href=//;s/>.*//' | sed "s/.*\///")
}  


declare -a visited_links

#start_page="https://cdn.hackerrank.com/hackerrank/static/contests/capture-the-flag/infinite/qds.html"
start_page="https://cdn.hackerrank.com/hackerrank/static/contests/capture-the-flag/infinite/flhxd.html"

page_contents=$(curl -s $start_page)

# If the variable $page_contents is not inside quotes, the script will not respect LF's
extract_links "$page_contents"

array_links=($links)

for link in "${array_links[@]}"; do
	echo $link
done


#visited_links=("${visited_links[@]}" $start_page)
#visited_links=("${visited_links[@]}" $link_line)



echo ${visited_links[0]}
