# what is whinsh

This repo helps you extend whin gateway service to automate your notification efforts. This solution utilizes APIs to send messages to WhatsApp groups or individual phone numbers with customizable content, all through a simple and easy-to-use bash script.

Built on top of the latest technologies, whin offers unparalleled flexibility and scalability, allowing you to reach your target audience in real-time and with maximum efficiency.

Advanced features such as message scheduling, personalization, allow for granular control over your notifications, ensuring that your message is delivered to the intended wahtsapp target at the right time.

Security is also of paramount importance, utilizing encryption to protect your data and ensure that your messages are delivered safely and securely.



# how to use this Repo

1. Open a terminal window.
2. Clone the repo to a directory on your computer.
3. Make the script file executable by running the command:
    
```
chmod +x /path/to/whin.sh
```

4. When running the script, you need to have an active (FREE) subscription to the whin service on RapidAPI and have a valid `RapidAPI Key`. You can obtain the free subscription by visiting [rapidapi.com/whin](https://rapidapi.com/inutil-inutil-default/api/whin2).

5. Replace the "<RAPIDAPI_KEY>" in the headers section of the script with your own RapidAPI key.

6. To run the script, use the command:

```
./path/to/whin.sh "message" [gid]
```

Where `"message"` is a required parameter which will be the whatsapp message that you will send when the script is ran. As it is a text message, it must be enclosed in quotes. [gid] is an optional parameter, it must be a number, the gid is the unique identifier of the whatsapp group that you want to send the message to.


7. If the script is executed successfully, it will send a whatsapp message to the whatsapp group; or directly to you in case the script is executed without the whatsapp group parameter.
