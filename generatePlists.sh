#!/bin/bash
echo "* Building JSON via Jekyll:"
jekyll build

echo "* Converting files to plist:"
echo "    tips.pl"
cat _site/tips.json | sed 's/,null//' | plutil -convert xml1 - -o Xcode_stuff/pl.lproj/tips.plist
echo '    tips.en'
cat _site/tips.en.json | sed 's/,null//' | plutil -convert xml1 - -o Xcode_stuff/en.lproj/tips.plist
echo "    stories.pl"
cat _site/stories.json | sed 's/,null//' | plutil -convert xml1 - -o Xcode_stuff/pl.lproj/stories.plist
echo "    stories.en"
cat _site/stories.en.json | sed 's/,null//' | plutil -convert xml1 - -o Xcode_stuff/en.lproj/stories.plist
echo "    signs.pl"
cat _site/signs.json | sed 's/,null//' | plutil -convert xml1 - -o Xcode_stuff/pl.lproj/signs.plist
echo "    signs.en"
cat _site/signs.en.json | sed 's/,null//' | plutil -convert xml1 - -o Xcode_stuff/en.lproj/signs.plist

echo "* Placing files below into Xcode project directory:"
tree Xcode_stuff
cp -r Xcode_stuff/* ~/coding/ekopoland/