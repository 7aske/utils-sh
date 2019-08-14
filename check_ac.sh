status=$(acpi | awk '{print $3}' | cut -d ',' -f1)

if [ "Discharging" == "$status" ] 
then
    /home/nik/Code/sh/utils-sh/cpuf.sh base
else 
    /home/nik/Code/sh/utils-sh/cpuf.sh    
fi