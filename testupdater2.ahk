Name = Your File Name


UrlDownloadToFile, (Urltoyourupdate.txt), path to where it should download the file\Update.txt
FileRead, text, path to where your file is located\Update.txt
if InStr(text, "Pinda") ;Change "Pinda" to a new word after you are going to push a update change your txt file to text="YourWord"
{
		Gui, Update:Add, Text, x5 y40 w145 h25, You are currently running an outaded version       ;Announces the current version the user is using.
		Gui, Update:Add, Text, x5 y85 w125 h15, Would you like to update?         ;Text asking if the user wants to update to the newer version
		Gui, Update:Add, Button, x85 y180 w43 h23 gYes, Yes                        ;If pressed it will go to the Yes sub to download the newest version available;
		Gui, Update:Add, Button, x135 y180 w43 h23 gHome, No                     ;Will skip the update and go to the main functions
		Gui, Update:Show, w192 h204, Update?                                     ;Update window title.
	}
else
{
 "Add your new functions here"
}



Yes:
UrlDownloadToFile, www.yoururl.com, your path & File name
gosub Run
return


Run:
Run, %Name%
ExitApp