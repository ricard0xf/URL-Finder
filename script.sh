#!/bin/bash

if [ "$1" == "" ]
then
	echo "Script by R1C4RD0"
	echo "$0 [DOMÍNIO]"
	echo "Ex: $0 google.com"
else
	echo "========================================================================"
	echo "		             [+] URLs em: $1"
	echo "========================================================================"

wget $1 2>/dev/null  

cat index.html | grep "href=\"http" | cut -d "/" -f 3 | cut -d "\"" -f 1 | cut -d "?" -f 1 | grep -v "<" | sort -u  > urls

cat urls
echo "========================================================================="

for url in $(cat urls); do  host $url; done | grep "has address" | sort -u  > ips

echo "		             [+] IPs em: $1"
echo "========================================================================="
cat ips
echo "========================================================================="

rm index.html* 
# remove o "html" que foi baixado, cuidado se você tiver outro arquivo com o mesmo nome!

fi
 
