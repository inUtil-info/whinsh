

This repo contains a shell script to help you extend `whin` gateway service to automate your notification efforts. We call it `whinsh`.

# what is whinsh?

Whinsh is an extension for the whin backend service that allows you to send WhatsApp notifications programmatically from your home server, such as a Raspberry Pi. Whin provides the logic for the service, while Whinsh acts as a lightweight tool that allows you to easily send notifications to you, or to a Whatsapp Group owned by you. 
With Whinsh, you can configure your home server to send notifications automatically based on certain triggers, such as a change in temperature or a motion sensor being triggered. This tool provides a convenient way to stay connected with your WhatsApp contacts and receive important notifications on the go, without having to rely on a mobile device.



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

5. Copy the `RapidAPI Key`, then edit the file `ẁhinsh.conf` located on `./src/config/whinsh.conf` and paste the key over the placeholder: `YOUR_API_KEY_GOES_HERE`

# how to run whinsh

Once the set up process is completed, you can run the script using these commands:

### to send a whatsapp:
```
./path/to/whin.sh send "message" [gid]
```

Where `"message"` is a required parameter which will be the whatsapp message that you will send when the script is ran. As it is a text message, it must be enclosed in quotes. `[gid]` is an optional parameter, and it must be a number; the `gid` is the unique identifier of the whatsapp group that you want to send the message to. If you don't know the gid of the group you want to send the messages to, you can learn how to get it [here](https://rapidapi.com/inutil-inutil-default/api/whin2/tutorials/how-to-use-the-groups-category-to-send-and-receive-whatsapps-to%2Ffrom-groups%3F-1).

If the script is executed successfully, the `message` will be sent to the whatsapp group; or directly to you in case the script is executed without the whatsapp group parameter: `gid`.


### to create a whatsapp group:
whin can send the messages to whatsapp groups, if you don't have a whatsapp group already you can use this command to create one. 

```
./path/to/whin.sh create-group
```

When the command is executed, a new group will be created, you will be added to it and promoted to Admin. Depending on your whatsapp settings, you might have to add whin first to your contacts, so that it can invite you to join the group.
When the group is created, you will need its unique identifier to send whatsapps to it; by default, the name of the group upon creation will be the gid, but you can also get its value reading [this](https://rapidapi.com/inutil-inutil-default/api/whin2/tutorials/how-to-use-the-groups-category-to-send-and-receive-whatsapps-to%2Ffrom-groups%3F-1) guide.


---
---


MIT License

Copyright (c) [2023] [lu4t]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---
---
