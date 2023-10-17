start_backup: backup grant folder backup.sh
	./backup.sh folder backup 60 10

backup:
	mkdir -p backup

grant:
	chmod 755 backup.sh
	chmod 755 backup-cron.sh

delete:
	rm -rf backup
	rm directory-info.last directory-info.new