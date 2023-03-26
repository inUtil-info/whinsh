#!/bin/bash

CONFIG_FILE="$(dirname "$0")/config/whinsh.conf"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: configuration file '$CONFIG_FILE' not found"
    exit 1
fi

# Load configuration from file
source "$CONFIG_FILE"

function create_whatsapp_group {
    curl --http1.1 --request GET \
    --url "$WHIN_API_URL/creategroup" \
    --header "X-RapidAPI-Host: $WHIN_API_HOST" \
    --header "X-RapidAPI-Key: $WHIN_API_KEY"
    echo "Whin just created a WhatsApp group for you. Write the command group-id on the group and whin will send you the gid."
}

function send_whatsapp_message {
    text=$1
    gid=$2

    if ! [[ "$text" =~ ^[a-zA-Z0-9\ ]*$ ]]; then
        echo "Error: text parameter must be a string."
        exit 1
    fi

    if [ -n "$gid" ]; then
        if ! [[ $gid =~ ^[0-9]+$ ]]; then
            echo "Error: gid parameter must be a number."
            exit 1
        fi
        endpoint="$WHIN_API_URL/send2group?gid=$gid"
    else
        endpoint="$WHIN_API_URL/send"
    fi

    curl --http1.1 --request POST --url "$endpoint" \
    --header "X-RapidAPI-Host: $WHIN_API_HOST" \
    --header "X-RapidAPI-Key: $WHIN_API_KEY" \
    --header 'content-type: application/json' \
    --data "{\"text\":\"$text\"}"
}

case "$1" in
    whin-create-group)
        create_whatsapp_group
        ;;
    whin-send-message)
        text=$2
        gid=$3
        send_whatsapp_message "$text" "$gid"
        ;;
    *)
        echo "Error: invalid command."
        echo "Usage: $0 {whin-create-group|whin-send-message <text> [<gid>]}"
        exit 1
esac
