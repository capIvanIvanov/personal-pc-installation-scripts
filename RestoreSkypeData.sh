
rm -Rv ~/.Skype/ivan.ivanov1983/*
cp -rv ~/Storage/Program\ BackUps/$1/ivan.ivanov1983/* ~/.Skype/ivan.ivanov1983/
find ~/.Skype/ivan.ivanov1983/ -type f -exec chmod 644 {} \;
