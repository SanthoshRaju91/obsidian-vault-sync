#/usr/bin/bash

echo "\n::: Setting up Obsidian Vault Sync crontab"

APP_DIR=$(pwd)

crontab -l > obsidian-vault-sync

echo "0 0 7 * * 0 cd $APP_DIR && ./script.sh" >> obsidian-vault-sync

crontab obsidian-vault-sync

rm obsidian-vault-sync