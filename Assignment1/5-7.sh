#!/bin/bash

mkdir public_html testing tmp

 
touch public_html/readme.txt

touch testing/{a..l}

chmod 777 public_html

cd testing

for filename in `find . -maxdepth 1 -type f | cut --complement -c1,2 | sort | head -4`

do
	mv "$filename" "../public_html/$filename"
	echo "Moved $filename to ../public_html/$filename"
done
cd ..



cp -R public_html/ /tmp/

mv /tmp/public_html/ public_html/

mv public_html/public_html public_html/renamed-public_html

rm -rf public_html testing tmp

