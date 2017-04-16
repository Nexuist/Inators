set phoneNumber to "<number here>"
set message to "Hello!"
set iterations to 5

tell application "Messages"
	set iMessageService to 1st service whose service type is iMessage
	set friend to (buddy phoneNumber of iMessageService)
	repeat iterations times
		send message to friend
		delay 0.7
	end repeat
end tell
