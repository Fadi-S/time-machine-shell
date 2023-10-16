# TimeMachine Backup

## How to use
./backup.sh [path to folder] [path to backup folder] [interval in seconds] [max number of backups]

## Example
```shell
./backup.sh /home/user/Documents /media/user/Backup 60 10
```
This will back up the folder /home/user/Documents to /media/user/Backup every 60 seconds. It will keep the last 10 backups.

## How it works
The script will create a folder in the backup folder with the name of the folder you want to back up. It will then create a folder with the current date and time in that folder. It will then copy all the files from the folder you want to back up to the folder with the current date and time. It will then delete the oldest backup if the max number of backups is reached.

## How to stop
To stop the script, press Ctrl/Cmd+C in the terminal window where the script is running.

## License
This project is licensed under the MIT License

## Author
This project was created by [Fadi Sarwat - 7432](https://fadisarwat.dev)