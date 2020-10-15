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

sed -i "s/ /\n/g" index.html
grep "href=\"http" index.html > /tmp/url1
cut -d "\"" -f 2 /tmp/url1 | sort -u > /tmp/url2
awk -F / '{print $1 $2"//"$3}' /tmp/url2 | sort -u  > /tmp/url3

cat /tmp/url3 

echo "========================================================================="

awk -F / '{print $3}' /tmp/url3 > /tmp/url4

for site in $(cat /tmp/url4); do  host $site; done | grep "has address" | sort -u  > /tmp/ips

echo "		          [+] IPs em: $1"
echo "========================================================================="
cat /tmp/ips
echo "========================================================================="

rm index.html
# Remove o download do HTML da página para evitar acumulações. Certifique-se de sempre ver se não tem outro arquivo importante com o mesmo nome!

fi
