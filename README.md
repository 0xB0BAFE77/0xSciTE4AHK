
# **B0BA's Custom SciTE4AutoHotkey Files**

### At the time of this posting, these files should be AHK v1.1.33.x compliant.  

### [Updates/Change Log](#updateschange-log-1)

**Intro**:  
**It's Pi day and that means it's time for me to share some stuff!**  
OK, to be fair I *started* before Pi day and unfortunately did not get finished until after.  
But the tradeoff is I did more updates before posting. Worth it.  

Let's get to it:

I'm sharing my personal rewrite of the AHK v1 API and KeyWord files for SciTE4AutoHotkey.  
This updates all calltips with more info, fixes syntax highlights, removes all deprecated commands, and incorporates all commands/functions/objects that have been added since this program was last updated.  
I'm also including an update for TillaGoTo. Made some improvements, some upgrades, some fixes, and added a drop of sexy.  
Speaking of which, I'm including my personal style file and syntax preview testing file for anyone to use.

## API File

*Install:*  
The `ahk.api` file goes into the main SciTE folder. This is the folder that scite.exe resides in.

During the rewrite of the API files, I built my own "card format" for calltips.  
This new format minimizes wording while maintaining the full conveyance of the command.  
In addition, my calltips include all parameters, what each does and what's expected, notes when params are optional, lists return values, gives notations/remarks that cover extra noteworthy information, and most have a small example attached to the bottom that shows how to use the command/function/etc.

**Because who the hell wants to keep alt+tabbing back and forth to the docs when the calltip can GIVE YOU that info???**  
**Am I right?!**  
¯\\\_(ツ)\_/¯  

But seriously, don't be surprised when you find yourself checking the docs less and less because you now when you need to look up a subcommand or some optional symbol or need to know what a param expects or need to know what errorlevel gets set to, you can just type the command and the calltip will tell (most likely) you.  

Also, don't expect ALL info to be present. These cards cover what's necessary to use the command and are kept as lean as possible. They are not 1:1 replicas of the documentation.

Example: Current version of SciTE displays [GetKeyState as a command](https://i.imgur.com/aWgDNVf.png) (orange in the Hat of God theme = command).  
But the calltip card is for a function.  
If you click the little arrow on the calltip, then you get the [command calltip](https://i.imgur.com/ujaLVd0.png).  
The last time this API was updated, the GetKeyState command hadn't been deprecated. That was years ago.  
The information is minimal.  
In the updated API, the GetKeyState command is removed, it highlights as a built-in function now, it has only the GetKeyState() function calltip and [that calltip is gives a lot more info](https://i.imgur.com/hCafNOl.png).  
It now tells you what the command does, what kind of Keys can be used (named, scancode, virtual key), what the modes do including if you leave it blank, what the return values are and what they mean, and finally an example of how to use it.  
The examples can be of extra help to new users. Let's say someone is new and hasn't gotten used to strings requiring quotes in expressions.  
They can't figure out why `GetKeyState(Shift, P)` doesn't work.  
But they look at the calltip and notice: "Oh! Those words have quotes around them. I should try that..." => Success!! :D  

Most of the calltips follow this general format.  
And while I did try to keep all cards as slimmed down as possible, some cards are larger than others.  
The RegEx commands immediatley come to mind. But in their defense, they have a lot of info packed into a small area.
And once you learn RegEx, those cards become quick references, alleviating the need to alt tab out, google a regex cheat sheet, and skim for what you need.  
Now you can just reference your calltips.  
All cards max out at 80 chars wide.  
My updated file does include object methods, as well.

I can always create a slimmed down version if enough people have interest. Simialr to the original version.  

Sidenote: I'm sure I've overlooked some stuff or missed an update to a command or something.  
If you find a missing something missing or something wrong or an example doesn't work, PLEASE let me know. It's the only way I can fix it.  
0xB0BAFE77@gmail.com  

## KeyWords File

*Install:*  
The `ahk.keywords.properties` file goes into the main SciTE folder

The keywords file is how SciTE knows how to highlight your AHK code.  
I did a full update/rewrite to this file a couple days ago. It should be complete.  
As object methods and properties do not have their own style in this current SciTE setup, I've put object properties in with subcommands/keywords syntax highlighting and object methods are included in the built-in functions highlighting.  
This file should ensure all keywords are now highlighted correctly. EG: GetKeyState no longer highlights as a command.  
Like ahk.api, all deprecated commands have been removed from this file to discourage people from using them. 
Note that it's perfectly fine to use keywords and subcommands as variables. EG: `Str` is type used for DLLCalls. Str will highlight when used as a variable name. This is OK.

## [TillaGoTo](https://i.imgur.com/MGm68Nu.png)
*Install:*  
Make sure to put `TillaGoto.ahk` in the SciTE\tools folder.
The color settings are built into my style file (listed below).

TillaGoTO is an overlooked tool that comes with SciTE. It makes navigating AHK files quick and easy.  
At any time, you can hit F12 or Middle Mouse to bring up a search box.  
That box originally searched for functions, hotstrings, hotkeys, labels but didn't always match them properly.  
I've rewritten all regex matches and also included class detection.  
Everything is prefixed with one of the following: "HotStr Hotkey Func Label Class" 
Class/object methods ARE detected and listed as functions.  
Might update this for method detection later.  

Controls:  
At any time you can hit F12 or Middle Mouse to bring up a search box.  
Hitting F12 again will close it. Alternately, holding Middle Mouse will do this.  
Alt+Left and Alt+right will cycle you through the history of jumps you've made.  
Highlighting text and pressing shift+enter or middle mouse will cause tillagoto to jump you to the nearest function/method/label/class/hotkey definition that matches whatever the highlighted text was.  
TillaGoTo has many settings in the `tillagoto.properties` file.  
A chunk of those settings (as well as the dark theme shown in the picture below) are covered in my included SciTE style below.

[Original version](https://i.imgur.com/MMF3OJf.png).  
[Updated version](https://i.imgur.com/MGm68Nu.png).

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
Each data type is a different color.  
Strings are the only bright white thing.  
Built-in vars have a soft, neon-magenta hue to them.  
Built-in functions/methods are a softer version of cyan.  
Flow control statements are always yell and underlined.  
Keys/buttons/joys are close in shade to hotkeys but the underline options separates the two.  
I put a ton of time into this and chose each color and font style with reason and intent.  

Hopefully, you guys find it as pleasing as I do.

The file used in the picture is my SciTE syntax tester and is included with all the other files in the repo.    

### Stay tuned for more updates

***

### Updates/Change Log
* 2022-03-17 Already made some updates.  
  * Added Get and Set to the files. Missed them when doing the class document.
  * Updated the api to include the dot prefix (.) to all methods and properties. I didn't realize those had been removed.
  * Removed a test command I had put in there. There is no test() function. :P
  * Added in a few properties I missed.
  * There are some neat features that have been added to SciTE. I'm looking into writing an updated version that incorporates the newest version of SciTE.
  * I'll try to keep this changelog as up-to-date as possible.

* 2022-03-19
  * Added AltMenu to API file (used with the AltTab hotkeys)
  * Updated my style file.
  * 
