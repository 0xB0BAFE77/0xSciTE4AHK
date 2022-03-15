
# B0BA's Custom SciTE4AutoHotkey Files

It's Pi day and I'm in the mood to share. Let's get to it:

I'm sharing my personal rewrite of the AHK v1 API and KeyWord files for SciTE.  
This includes all commands, built-in functions, built-in vars, subcommands, operators, and most methods and properties for AHK's built in objects.  
At the time of this posting, these files should be AHK v1.33.x.x compliant.  

## API File
During the rewrite of the API files, I built my own format for calltips. This new format includes me rewriting every description to minimalize as much wording as possible while still maintaining full conveyance of the command.  
In addition, my calltips include all possible parameters, what's expected in each, which are optional, return value types, remarks that cover any additional noteworthy information, all options available in any param and minimal descriptions, and each command/function/directive/flowcontrol statement has a minimal example with it.  
Because who the hell wants to keep alt+tabbing back to the docs to look up something???

Example: The current version of SciTE displays [GetKeyState as a command](https://i.imgur.com/aWgDNVf.png) (orange is command in the Hat of God theme).  
But the calltip card is for a function.  
Then, if you click the little arrow on the calltip, you get the [command calltip](https://i.imgur.com/ujaLVd0.png).  
The reason? The last time this API was updated, the GetKeyState command hadn't been deprecated. That was years ago.  
My API has removed GetKeyState as a command, the keywords file has it updated as a built-in function (so it highlights correctly), and has only one calltip that is [highly updated](https://i.imgur.com/hCafNOl.png).  
You'll immediately notice all the extra info provided.  
All calltips follow this general format. Some of the cards are larger than others.  
All cards max out at 80 chars.  
In addition, I've included most of the methods and properties found in AHK's native objects (exception, file, funcobject, regex, and of course the core AHK object).  

I went over each command in the last couple days running up to Pi Day to ensure all new commands were represented in the API.  
I'm sure I've overlooked some stuff or just haven't caught updates between now and then.  
If you find something is missing or you just want to make a suggestion, let me know.  
0xB0BAFE77@gmail.com  

## KeyWords File
I rewrote the keywords file yesterday and have been updating it as needed.  
As there are no method or property styles set up with this current version of SciTE, I've put object properties in with subcommands/keywords syntax coloring and all methods are included in the built-in functions highlighting.  
This file should ensure all keywords are highlighted correctly.  
Again, all deprecated commands have been removed from from this file to discourage their use. 

## Bounty on a Brain
My final Pi day upload is my own personal and highly customized style file.  
I spent 2 days straight working on this and quite some time refining it after. Trying a myriad of color combinations, weighting options, when to bold, what colors to use, what hues to avoid, etc...
I finally settled on this (though, I'm on the fence about a couple things. Don't be surprised if it gets updated ¯\\\_(ツ)\_/¯ )  

The theme is built around a pitch black background.  
Minimizes eye strain.  
Uses less electricity.  
Text is easier to read.  
Works just as good in daylight as night time.  
Pretty much wins all around.  

I was going for kind of an 80s neon them but with colors toned down to be 1/2 way between neon and pastel.  
It looks appealing, doesn't fry your eye balls, has a slickness to it and provides you with a way to highlighting that lets you know exactly what you're working with.  
Example: If you're working with a built-in variable, you get use to seeing the same color pop up. And if doesn't, you immediately know to go back and check the spelling.  
Flow control always show up as underlined yellow text. You always know where if/loop/return/timers are.  
Built-in functions stand out against normal functions. Numbers always show as underlined.  
Hopefully, you guys find it as pleasing as I do.

Stay tuned for more updates!
