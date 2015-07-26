#!/bin/bash
# day of year: %j, we have the modification time of backup dirs anyway
DOY=$(date +%j)
BAK_DIR=/backup
# get the latest backup into LINK_DEST
DIR_LIST=(`ls -dt $BAK_DIR/dieter_*/`)
LINK_DEST=${DIR_LIST[0]}
#LINK_DEST=/backup/dieter_2015-05-21
DESTINATION=$BAK_DIR/dieter_$DOY
EXCLUDE="--exclude-from=/home/dieter/scripts/rsync_dieter.exclude"
echo Link destination is $LINK_DEST
echo "Differential backup of: $HOME/ to $DESTINATION/"
echo exclude pattern: $EXCLUDE
# --cvs-exclude -- files which csv would exclude: *.bak, *~, etc.
if [ $LINK_DEST != $DESTINATION/ ];
then
    echo 
    rsync -avh $EXCLUDE --cvs-exclude  --delete --link-dest=${LINK_DEST}  $HOME/ $DESTINATION/
else
    echo 
    echo "Warning: Link destination and backup destination are the same"
fi
