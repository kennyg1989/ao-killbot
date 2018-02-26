# AO-Killboard

A discord bot for Albion Online's killboard

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

![Screenshot](https://i.imgur.com/jgBxpqh.png)

### Usage
* !ping - replies with @user pong
* !kbclear - deletes all messages in the config.botChannel
* !kbinfo $eventId - displays the killboard post for a specific kill to the current channel
* !kills $playerName [$n] - displays the last n kills of the given player. If n is not given, then it is set to 1

### Prerequisites

* [Docker](https://www.docker.com) or [NodeJS](https://nodejs.org)

### Create a Bot & Setup Discord
* Create a new [Discord Application](https://discordapp.com/developers/applications/me)
* Copy the apps 'ClientID' (under 'app details') and the 'Token' (click on 'click to reveal' under 'Bot' to get it)
* You will need the ClientID to authorize the app for your server and the Token for the 'config.json'
* Enable developer mode in Discord (Settings -> Appearance)
* Right click the channel you wish to use as the kill board, and Copy ID - this will be the 'botChannel' in the 'config.json'

### Add the Bot to your server
* The apps ClientID you copied earlier will now be needed
* Visit https://discordapp.com/oauth2/authorize?&client_id={ClientID}&scope=bot&permissions=0 where you substitute the '{ClientID}' with the actual ID
* Example: https://discordapp.com/oauth2/authorize?client_id=975390562344171337&scope=bot&permissions=0
* Login with an account that is either the owner of the server you wish to authorize your app for or has the rights to do so and authorize the app

### Config
* Paste your bots Token as 'token' and the channels ID as 'botChannel' into your config
* Enter the guild name you wish to post kills (and deaths) for
* To only display guild kills and not alliance, set allianceName to something that cannot exist i.e <NONE>
* OPTIONAL: Set User IDs for admin accounts (if you want the bot to be able to delete messages in this channel)
	
* Example: config.json
--
```json
{
	"cmdPrefix": "!",
	"allianceName": "<NONE>",
	"guildName": "Templer",
	"username": "AO-Killbot",
	"admins": [
		"224865313374079430"
	],
	"botChannel": "445822300890941337",
	"playingGame": "Albion Pwn Pong",
	"token": "zMznafHXfbga1337.hYN.CDTzsMHXz_35MNMiGyLOT-8EoQotgEs10iZAa7"
}
```

### Manual Install
* Install Node JS on the machine that will run the bot
* Checkout this repo to the desired work directory & cd in there
* Copy config.json.example --> config.json and fill it out accordingly
* Run:
```
npm install && npm install rimraf && npm install --save-dev babel-cli
```
* To start the bot, run:
```
npm start
```
* Enjoy

### Run with Docker
* Checkout this repo
* Create new directory in this project directory (this is to support multi-bot-environment from within this workDir). The name of the directory will be the suffix of the containers name. Take the guild or alliance name for example.
* Copy config.json.example --> ./$yourDir/config.json and fill it out accordingly (so for the 'templer' guild it would be './templer/config.json')
* Make sure your user can run docker commands or run the script as sudo
* Run "./create_service $yourDir" (so in our example it'd be './create_service templer')
* Enjoy

### Built With

* [Discord.js](https://github.com/hydrabolt/discord.js/) - Discordapp library for Node.js and browsers.
* [Request](https://github.com/request/request) - Simplified HTTP client

## Authors

* **Mark Arneman** *Marn#8945* - [Arneman.me](http://arneman.me)
* **Arkadiusz Zarychta** aka *invalidname*/*azaryc2s* - (Docker & new Features)
