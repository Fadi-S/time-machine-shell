# TimeMachine Backup

## How to use
./backup.sh [path to folder] [path to backup folder] [interval in seconds] [max number of backups]

## Example
### Using make file
To run the backup using the make file, run the following command in the terminal:
```shell
make
```
That will create a folder called "backup" in the current directory. It will then copy the backup.sh file to that folder. It will then run the backup.sh file with the following arguments:
```shell
./backup.sh folder backup 60 10
```

### Using shell script directly
```shell
./backup.sh {source} {destination} {interval_in_seconds} {max_backup_folders}
```
This will back up the folder {source} to {destination} every {interval_in_seconds} seconds. It will keep the last {max_backup_folders} backups.

## How it works
The script will create a folder in the backup folder with the name of the folder you want to back up. It will then create a folder with the current date and time in that folder. It will then copy all the files from the folder you want to back up to the folder with the current date and time. It will then delete the oldest backup if the max number of backups is reached.

## How to stop
To stop the script, press Ctrl/Cmd+C in the terminal window where the script is running.

## Using a cronjob to run the script
To run the script using a cronjob, run the following command in the terminal:
```shell
crontab -e
```
Then add the following line to the end of the file:
```shell
* * * * * /path/to/cron/backup.sh {source} {destination} {max_backup_folders}
```
Then save the file and exit.
this will run the script every minute. You can change the interval to whatever you want.
- For example If you want to run this backup every 3rd Friday
  of the month at 12:31 am, you would use the following cronjob:
```
  31 0 15-21 * 5 /path/to/cron/backup.sh {source} {destination} {max_backup_folders}
```

## License
This project is licensed under the MIT License

## Author
This project was created by [Fadi Sarwat - 7432](https://fadisarwat.dev)