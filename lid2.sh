if [ -e /tmp/lid]
then
    rm /tmp/lid
else   
    touch /tmp/lid
    systemctl suspend 
fi