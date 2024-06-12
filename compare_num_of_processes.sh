#!/bin/zsh

num_of_root_ps=$(ps -U root -u root u | wc -l)
num_of_USER_ps=$(ps -U $USER -u $USER u | wc -l)
if [ $num_of_root_ps -eq $num_of_USER_ps ]
then
     echo "Number of processes running by root ($num_of_root_ps) is same of USER processes number ($num_of_USER_ps)."
elif [ $num_of_root_ps -gt $num_of_USER_ps ]
then
     echo "Number of processes running by root ($num_of_root_ps) is greater than USER processes number ($num_of_USER_ps)."
elif [ $num_of_root_ps -lt $num_of_USER_ps ]
then
     echo "Number of processes running by root ($num_of_root_ps) is less than USER processes number ($num_of_USER_ps)."
fi
