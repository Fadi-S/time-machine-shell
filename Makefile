start_backup: backup folder backup.sh
	./backup.sh folder backup 4 4

backup:
	mkdir -p backup

delete:
	rm -rf backup
	rm directory-info.last directory-info.new