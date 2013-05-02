#!/bin/bash

#Initialize the array
LOCARRAY=(`networksetup -listlocations | sort | tr '\n' ' '`)

#Create an xml header
cat > tmp.xml <<EOL
<?xml version="1.0"?>
<items>
EOL

#Populate the xml

for item in "${LOCARRAY[@]}"
do

    cat >> tmp.xml <<EOL
    <item uid="${item}" arg="${item}" valid="YES" autocomplete="${item}">
    <title>${item}</title>
    <subtitle>Switch network location to ${item}</subtitle>
    <icon>icon.png</icon>
    </item>
    EOL

done

#Close the xml
echo "</items>" >> tmp.xml

cat tmp.xml
