

This repo contains a shell script to help you extend `whin` gateway service to automate your notification efforts. We call it `whinsh`.

# what is whinsh

This solution utilizes APIs to send messages to WhatsApp groups or individual phone numbers with customizable content, all through a simple and easy-to-use bash script.

Built on top of the latest technologies, `whin` offers unparalleled flexibility and scalability, allowing you to reach your target audience in real-time and with maximum efficiency.

Advanced features such as message scheduling, personalization, allow for granular control over your notifications, ensuring that your message is delivered to the intended whatsapp target at the right time.

Security is also of paramount importance, utilizing encryption to protect your data and ensure that your messages are delivered safely and securely.



# how to install whinsh

1. Open a terminal window.
2. Clone the repo to a directory on your computer.

```
git clone https://github.com/inUtil-info/whinsh.git
```

3. Make the script file executable by running the command:
    
```
chmod +x /path/to/whin.sh
```

4. When running the script, you need to have an active subscription to whin service (it is FREE!!) on RapidAPI and use the `RapidAPI Key` they provide. You can obtain the free subscription by visiting [rapidapi.com/whin](https://rapidapi.com/inutil-inutil-default/api/whin2).

5. Copy the `RapidAPI Key`, then edit the file `ẁhinsh.conf` located on ./src/config/whinsh.conf and paste the key over the placeholder: `YOUR_API_KEY_GOES_HERE`

6. To run the script, use these valid commands:

## to send a whatsapp:
```
./path/to/whin.sh send "message" [gid]
```

Where `"message"` is a required parameter which will be the whatsapp message that you will send when the script is ran. As it is a text message, it must be enclosed in quotes. `[gid]` is an optional parameter, and it must be a number; the `gid` is the unique identifier of the whatsapp group that you want to send the message to. If you don't know the gid of the group you want to send the messages to, you can learn how to get it [here](https://rapidapi.com/inutil-inutil-default/api/whin2/tutorials/how-to-use-the-groups-category-to-send-and-receive-whatsapps-to%2Ffrom-groups%3F-1).

If the script is executed successfully, the `message` will be sent to the whatsapp group; or directly to you in case the script is executed without the whatsapp group parameter: `gid`.


## to create a group:
whin can send the messages to whatsapp groups, if you don't have a whatsapp group already you can use this command to create one. 

```
./path/to/whin.sh create-group
```

When the command is executed, a new group will be created, you will be added to it and promoted to Admin. Depending on your whatsapp settings, you might have to add whin first to your contacts, so that it can invite you to join the group.
When the group is created, you will need its unique identifier to send whatsapps to it; by default, the name of the group upon creation will be the gid, but you can also get its value reading [this](https://rapidapi.com/inutil-inutil-default/api/whin2/tutorials/how-to-use-the-groups-category-to-send-and-receive-whatsapps-to%2Ffrom-groups%3F-1) guide.


---


