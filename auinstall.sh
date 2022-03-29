#!/bin/bash
whoami > inuser.txt
namepath=$(head -1 inuser.txt)

	file="/home/$namepath/installed.lock"
		if [ -f "$file" ]
	then
		echo "$file found OK."
	else
		echo "$file not found."
        sh /home/$namepath/m1.sh
            sudo chown -R $namepath:$namepath bin/
            sudo chown -R $namepath:$namepath /home/$namepath/bin
        rm -rf install.lock script-bash-default.sh m1.sh
        echo "Install Completed" > installed.lock
	fi
	
