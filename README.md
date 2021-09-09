# DevTools
Basic developer helper functions and convenience items for Dual Universe LUA 

Simple and handy tools for anyone new to Dual Universe LUA coding, nothing really fancy, just mildly useful stuff

If you are here, I assume you know the basics of LUA, LUA coding and how programming boards and control units work in DU. I will post readable source as well as paste-able code you can paste straight on a board or control chair. I will not provide detailed explanations or install instructions, and will assume you can figure out how to connected elements from the labels. If not, the tools may not be for you.....

1) DataBankReader: This is a super simply script to read the contents of a Databank out onto a screen. NOTHING exciting but super handy when you want to know what is in it. Could you system.print it to the LUA window, sure, but hey putting on a screen is cooler....and persistent if you are working on multiple things. Simply add a connection from the DataBank reader programming board to the DataBank you want to read. It reads only so it will not interfere with anything else using the databank at the same time and it will update as the databank variables are updated
2) MakeTime: This is just a function to pulls the system clock and turns it into a text string with the time, use the 'offset' to adjust for daylight savings time or any other offset you choose. It will use 24 hr time by default, but will adjust to 12-hour time if you are weak and use that. 
