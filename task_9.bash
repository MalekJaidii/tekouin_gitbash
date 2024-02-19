#!/bin/bash
old_IFS=$IFS
IFS=":"

while read -r username password userid groupid userinfo homedir shell; do
    echo "The user $username is part of the $groupid gang, lives in $homedir, and rides $shell."
    echo "User ID's place is protected by the passcode $password, more info about the user here: $userinfo"
    echo
done < /etc/passwd
IFS=$old_IFS
