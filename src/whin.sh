
#!/bin/bash

API_KEY="YOU_API_KEY_GOES_HERE"

if [ "$1" = "whin-create-group" ]; then
    curl --http1.1 --request GET \
    --url https://whin2.p.rapidapi.com/creategroup \
    --header "X-RapidAPI-Host: whin2.p.rapidapi.com" \
    --header "X-RapidAPI-Key: $API_KEY"
    echo " Whin just created a WhatsApp group for you, write the command group-id on the group and whin will send you the gid."
else
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
        endpoint="https://whin2.p.rapidapi.com/send2group?gid=$gid"
    else
        endpoint="https://whin2.p.rapidapi.com/send"
    fi

    curl --http1.1 --request POST --url $endpoint \
    --header "X-RapidAPI-Host: whin2.p.rapidapi.com" \
    --header "X-RapidAPI-Key: $API_KEY" \
    --header 'content-type: application/json' \
    --data "{\"text\":\"$text\"}"
fi
