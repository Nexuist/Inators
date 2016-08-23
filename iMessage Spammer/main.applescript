tell application "Messages"
	set targetBuddy to buddy "Friend's phone number" of service ("E:user@gmail.com")
	repeat 5 times
		send "You suck" to targetBuddy
		delay 0.7
	end repeat
end tell
