#!/bin/sh
STRING="NONE"
echo $STRING
echo "Changing to project"
cd ~/projects/maui
echo "updating project"
svn update
echo "building project"
ant war
echo "getting revison info"
svn info | grep -i "Revision" | cut -d ' ' -f 2 >tmp.txt
while read line; do
  echo $line
  STRING=$line
done < tmp.txt
rm tmp.txt
echo "revision number: " $STRING
cd dist
mv maui.war maui.war.$STRING
ls -al
scp maui.war.$STRING wevanson@test1.maui.uiowa.edu:/local/web/transfer/
scp maui.war.$STRING wevanson@test2.maui.uiowa.edu:/local/web/transfer/
scp maui.war.$STRING wevanson@prod1.maui.uiowa.edu:/local/web/transfer/
scp maui.war.$STRING wevanson@prod2.maui.uiowa.edu:/local/web/transfer/
scp maui.war.$STRING wevanson@gas.its.uiowa.edu:/local/web/transfer/
