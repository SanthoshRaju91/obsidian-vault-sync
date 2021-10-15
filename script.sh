#/usr/bin/bash

echo '\n::: Running Obsidian Vault sync'

OBSIDIAN_VAULT_PATH="${HOME}/Documents/Obsidian-Vault" 
SYNCED_DIR="Synced"

make_sure_sync_dir_exists() {
    echo "\n::::: Checking if ${SYNCED_DIR} directory exists."
    if [ -d $SYNCED_DIR ]; then
        echo '\n::::: Synced directory exists. Skipping.'
    else
        echo '\n::::: Synced directory does not exists. Creating one.'
        mkdir -p $SYNCED_DIR
    fi    
}

sync_obsidian_vault() {
    echo "\n::::: Syncing local Obsidian Vault"
    if [ -d $OBSIDIAN_VAULT_PATH ]; then
        echo "\n::::: Syncing Vault Now"
        rsync -ravp --perms --times --delete --whole-file \
            --exclude=.obsidian --exclude=.DS_Store \
            "${OBSIDIAN_VAULT_PATH}/." $SYNCED_DIR
    else
        echo "\n:::: Obsidian Vault does not exists in this machine"
        echo "\n::: If exists, move it your home directory as ${OBSIDIAN_VAULT_PATH}"
        exit 0
    fi
}


push_to_github() {
    echo "\n:::: Pushing the synced changes to github"
    COMMIT_DATE=$(date '+%Y-%m-%d %H:%M:%S')    
    git add .
    git commit -m "Committed on ${COMMIT_DATE}"
}


make_sure_sync_dir_exists
sync_obsidian_vault
push_to_github