apk add sudo
NEWUSER='yourUserName'
adduser -g "${NEWUSER}" $NEWUSER
echo "$NEWUSER ALL=(ALL) ALL" > /etc/sudoers.d/$NEWUSER && chmod 0440 /etc/sudoers.d/$NEWUSER

-- chsh doesn't work
sudo apk add shadow