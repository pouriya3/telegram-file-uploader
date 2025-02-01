#!/bin/bash

echo "Installing ..." 
sudo apt install -y curl 
 
echo "Downloading telegramUploader.sh..."
 
wget -q "RAW_GITHUB_URL/telegramUploader.sh" -O telegramUploader.sh
chmod +x telegramUploader.sh
 
echo ""  
echo "Please enter your Telegram Bot Token:"
read -r BOT_TOKEN
echo "Please enter the Telegram Chat ID:"
read -r CHAT_ID
 
echo "Configuring telegramUploader.sh..."
sed -i "s/BOT_TOKEN=\"\"/BOT_TOKEN=\"$BOT_TOKEN\"/g" telegramUploader.sh
sed -i "s/CHAT_ID=\"\"/CHAT_ID=\"$CHAT_ID\"/g" telegramUploader.sh
 
echo "Moving script to /usr/local/bin..."
sudo mv telegramUploader.sh /usr/local/bin/

echo "Installation complete!"
echo "You can now use the script with: telegramUploader.sh /path/to/file"

exit 0