#Requires AutoHotkey v2.0

^l::
{
	if !WinExist("League of Legends")
		Run "`"D:\Games\Riot Games\Riot Client\RiotClientServices.exe`" --launch-product=league_of_legends --launch-patchline=live"
	
	if !WinExist("Blitz")
		Run "C:\Users\leneti\AppData\Local\Programs\Blitz\Blitz.exe"
	
	if !WinExist("Discord")
		Run "`"C:\Users\leneti\AppData\Local\Discord\Update.exe`" --processStart Discord.exe"
	
	WinWait "Discord Updater"
	WinWaitClose "Discord Updater"
	
	Sleep 2000
	
	WinActivate "Discord"
	WinWait "Discord"
	
	Send "^k"
	Send "{!}Pasnekesiai"
	Send "{Enter}"
	
	WinWait "League of Legends"
	WinActivate
}