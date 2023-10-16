#!/bin/sh

dir=$1
backup_dir=$2
interval_in_seconds=$3
max_backups=$4

mkdir -p $backup_dir

current_time=$(date +"%Y-%m-%d-%H-%M-%S")
ls -lr $dir > directory-info.last
mkdir $backup_dir"/"$current_time
cp -R $dir $backup_dir"/"$current_time

while [ 1 ]
do
sleep $interval_in_seconds

current_time=$(date +"%Y-%m-%d-%H-%M-%S")
ls -lr $dir > directory-info.new
new=$(<directory-info.new)
last=$(<directory-info.last)
if [ "$new" != "$last" ]; then
    mkdir $backup_dir"/"$current_time
    cp -R $dir $backup_dir"/"$current_time
    echo "Backedup"

    count=$(ls -l $backup_dir | grep "^d" | wc -l)
    count=$(echo $count | sed 's/ *&//g')
    
    if [ "$count" -gt "$max_backups" ]; then
        oldest=$(ls -l backup | sort | head -1 |  awk -F' '  '{ print $9 }')
    
        rm -rf $backup_dir"/"$oldest
        echo "Deleted oldest backup"
    fi

    ls -lr $dir > directory-info.last
fi

done
