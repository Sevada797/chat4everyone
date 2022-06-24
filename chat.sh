function loadchat() {
clear
echo "Welcome to my chat server!"
echo "------Chat by Sevada------"
echo "Chat was created using: bash, php and curl"
echo -e "To reload the chat press enter to close the chat type 'exit!'\n"
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
