cat "iplist" | while read line
do
echo $line
torify timeout 5 curl -sk -u root:root $line/api/dhcp
echo ""
echo "" 
done
