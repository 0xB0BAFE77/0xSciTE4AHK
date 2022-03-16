
# **B0BA's Custom SciTE4AutoHotkey Files**

### At the time of this posting, these files should be AHK v1.1.33.x compliant.  

**It's Pi day and that means it's time for me to share some stuff!**  
OK, to be fair I *started* before Pi day and unfortunately did not get finished until after.  
But the tradeoff is I did more updates before posting. Worth it.  

Let's get to it:

I'm sharing my personal rewrite of the AHK v1 API and KeyWord files for SciTE4AutoHotkey.  
This updates all calltips, syntax highlight, deprecated commands are removed, tillagoto is working better than before and got some upgrades to functionality and aesthetics, and more.

## API File

*Install:*  
The `ahk.api` file goes into the main SciTE folder

During the rewrite of the API files, I built my own "card format" for calltips.  
This new format minimalizs wording while maintaining the full conveyance of the command.  
In addition, my calltips include all parameters, what each does and what's expected, notes when params are optional, lists return values, gives notations/remarks that cover extra noteworthy information, and most have a small example attached to the bottom to show how to give a quick example of what's expected.   

**Because who the hell wants to keep alt+tabbing back and forth to the docs when the calltip can give you that info???**  
¯\\\_(ツ)\_/¯  
But seriously, you really will find yourself checking the docs less because you can look up any option symbol, expected param values, find out what errorlevel sets to, or see what all the return values are for 'that one function', etc...

Example: Current version of SciTE displays [GetKeyState as a command](https://i.imgur.com/aWgDNVf.png) (orange is command in the Hat of God theme).  
But the calltip card is for a function.  
If you click the little arrow on the calltip, you get the [command calltip](https://i.imgur.com/ujaLVd0.png).  
The last time this API was updated, the GetKeyState command hadn't been deprecated. That was years ago.  
My API has been fully updated. GetKeyState as a command is removed. It now highlights as a built-in function and only has the [GetKeyState() function calltip](https://i.imgur.com/hCafNOl.png).  
You'll immediately notice all the extra information now provided.  
Keys can be by name, scancode, or virtual key.  
You know what the return values are and what they mean.  
And the example show's how to write it correctly. Maybe someone is new and hasn't gotten used to strings have to be quoted.  
Thye can't figure out why `GetKeyState(Shift, P)` doesn't work. They look at the calltip: "Oh! Those words have to be quoted. Let's try that." => Success!  

Most of the calltips follow this general format. Some of the cards are larger than others.  
Prime example: the RegExMatch and RegExReplace cards are rather large. But they also have a huge amount of information packed into a tiny space.  
Once you learn RegEx, those cards become quick references, alieviating you from having to alt tab out, google a regex cheat sheet, and skim for what you need. Now, just pull  up the calltip.  

All cards max out at 80 chars wide.  
In addition, I've included most of the methods and properties found in AHK's native objects (exception, file, funcobject, regex, and of course the core AHK object).  

In the last couple days I've gone over all commands listed and updated everything that's been added since my last update a couple years back.  
I'm sure I've overlooked some stuff or missed an update.  
If you find a missing command/subcommand/etc, let me know.  
0xB0BAFE77@gmail.com  

## KeyWords File

*Install:*  
The `ahk.keywords.properties` file goes into the main SciTE folder

The keywords file is how SciTE knows how to highlight your AHK code.  
I did a full update/rewrite to this file a coupld days ago. It should be complete.  
As object methods and properties do not have their own style in this current SciTE setup, I've put object properties in with subcommands/keywords syntax highlighting and object methods are included in the built-in functions highlighting.  
This file should ensure all keywords are now highlighted correctly. EG: GetKeyState no longer highlights as a command.  
Like ahk.api, all deprecated commands have been removed from this file to discourage people from using them. 
Note that it's perfectly fine to use keywords and subcommands as variables. EG: `Str` is type used for DLLCalls. Str will highlight when used as a variable name. This is OK.

## [TillaGoTo](https://i.imgur.com/MGm68Nu.png)
*Install:*  
Make sure to put `TillaGoto.ahk` in the SciTE\tools folder.
The color settings are built into my style file (listed below).

TillaGoTO is an overlooked tool in SciTE. This makes navigating AHK files quick and easy.  
At any time you can hit F12 or Middle Mouse to bring up a search box.  
That box originally searched for functions, hotstrings, hotkeys, labels but didn't always match them properly.  
I've rewritten all regex matches and also included class detection.  
Everything is prefixed with one of the following: "HotStr Hotkey Func Label Class" 
Class/object methods ARE detected and listed as functions.  
Might update this for method detection later.  

Controls:  
At any time you can hit F12 or Middle Mouse to bring up a search box.  
Hitting F12 again will close it. Alternately, holding Middle Mouse will do this.  
Alt+Left and Alt+right will cycle you through the history of jumps you've made.  
Highlighting text and pressing shift+enter or middle mouse will cause tillagoto to jump you to the nearest function/method/label/class/hotkey defintion that mates whatever the highlighted text was.  
TillaGoTo has many settings.  
A chunk of those settings (as well as the dark theme shown int he picture below) are covered in my included SciTE style below.

[Original version](https://i.imgur.com/MMF3OJf.png).  
[Udpated version](https://i.imgur.com/MGm68Nu.png).

## [Bounty on a Brain](https://i.imgur.com/1agWRh9.png)

*Install:*  
If you have SciTE installed, this file needs to go in: `.\user\<username>\Documents\AutoHotkey\SciTE\Styles`
If you have SciTE portable, put it in: `.\SciTE\user\Styles`

My final Pi day upload is giving out my own personal style file.  
I spent a lot of time making and refining this. Still tweaking it, but I'm 98% happy with it.  

The theme is built around a pitch black background.  
Minimizes eye strain.  
Uses less electricity.  
Text is easier to read.  
Works just as good in daylight as night time.  
Pretty much wins all around.  

I was going for kind of an 80s neon theme but with colors toned 1/2 way between neon and pastel.  
It looks appealing, doesn't fry your eye balls, has a slickness to it and provides you with highlighting that looks good and troubleshoots at the same time.  
Each data type is a different color. Strings are the only bright white thing. Built-in vars havea soft neon magent hue to them. Built-in functions/methods are a softer version of cyan.  
Flow control statements are always yell and underlined.  
Keys/buttons/joys are close in shade to hotkeys but the underline options separates the two.  
I put a ton of time into this and chose each color and font style for a reason.

Hopefully, you guys find it as pleasing as I do.

The file used in the picture is my SciTE syntax teseter and is included with all the other files in the repo.    

# Stay tuned for more updates!
