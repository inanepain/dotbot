clear;
echo `uname -n` " is sad to see $USER leave."

fd -0iId15 --glob "tempCodeRunnerFile*" ~/Developer -x trash
fd -0iId15 --glob "tempCodeRunnerFile*" ~/Projects -x trash
fd -0iId15 --glob "tempCodeRunnerFile*" ~/Sites -x trash
fd -0iId15 --glob "tempCodeRunnerFile*" ~/Temp -x trash

sleep 1
