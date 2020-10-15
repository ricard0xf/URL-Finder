#!/bin/bash

if [ "$1" == "" ]
then
	echo "Script by R1C4RD0"
	echo "$0 [DOMÍNIO]"
	echo "Ex: $0 exemplo.com"
else
	echo "========================================================================"
	echo "		          [+] URLs em: $1"
	echo "========================================================================"

wget $1 2>/dev/null

cat index.html | grep "href=\"http" | cut -d "/" -f 3 | cut -d "\"" -f 1 | cut -d "?" -f 1 | grep -v "<" | sort -u  > /tmp/urls

cat /tmp/urls
echo "========================================================================="

for url in $(cat /tmp/urls); do  host $url; done | grep "has address" | sort -u  > /tmp/ips

echo "		          [+] IPs em: $1"
echo "========================================================================="
cat /tmp/ips
echo "========================================================================="

rm index.html
# Remove o download do HTML da página para evitar acumulações. Certifique-se de sempre ver se não tem outro arquivo importante com o mesmo nome!

fi
 
