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

declare -a visited_links

pagina_inicial="https://cdn.hackerrank.com/hackerrank/static/contests/capture-the-flag/infinite/qds.html"

conteudo=$(curl -s $pagina_inicial)
#echo $conteudo


visited_links=("${visited_links[@]}" $pagina_inicial)


echo ${visited_links[0]}
