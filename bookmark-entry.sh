#!/bin/bash

dataPath=/var/www/html/bookmarks/bookmarkData.json

echo "New Bookmark Entry"
echo -ne "Title: ";read title;
echo -ne "URI: ";read uri;

sed -i "$(($(wc -l < $dataPath)-1)),\$d" $dataPath;

a=" },\n
			\t\t{\n 
					\t\t\t\t\"name\":\"$title\",\n
					\t\t\t\t\"uri\":\"$uri\"\n
			\t\t}\n
		]";

echo -e $a >> $dataPath


