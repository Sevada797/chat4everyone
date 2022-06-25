function loadchat() {
clear
echo "Welcome to my chat server!"
echo -e "+-----------------------------------+"
echo "|  Contributor: Sevada | @Sevada797 |"
echo "|  Created with bash, php and curl  |"
echo "|  to reload the chat press <enter> |"
echo "|  to exit the chat type 'exit!'    |"
echo -e "+-----------------------------------+\n"
messages=$(curl -s https://somechat797.000webhostapp.com/chat.txt)
echo -e "$messages"
read -p "Type your message here: " msg
if [ -z "$msg" ]
then
    loadchat
elif [[ $msg == "exit!" ]]
then
    close
    return 1
elif [[ $msg != "" ]]
then
    curl -s --get --data-urlencode "msg=$(whoami): $msg" "https://somechat797.000webhostapp.com/index.php" > /dev/null
    loadchat
fi
}

function close() {
echo -e "\nYou quit the chat"
}
loadchat
