#!/bin/bash

DATE=$(date +%F-%H-%M-%S)
BACKUP="/tmp/mysql_backup_$DATE.sql"
S3_BUCKET="s3://siva-mysql-backups"

echo "Taking MySQL backup..."

docker exec aws-devops-assignment-mysql-1 mysqldump -uroot -prootpassword mydb > $BACKUP

echo "Uploading to S3..."

aws s3 cp $BACKUP $S3_BUCKET

echo "Backup completed!"
