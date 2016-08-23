set workingFolder to (POSIX path of ((path to me as text) & "::")) -- POSIX path to the directory the script is running from
set dataFolder to workingFolder & "Data" -- Contains the files we'll be working with
set entries to paragraphs of (read dataFolder & "/Students.txt") -- Each entry will be a line from the text file
set photos to dataFolder & "/Pictures"
set template to dataFolder & "/Template.key" -- Keynote to use

tell application "Keynote"
	open template
	tell front document
		repeat with entry in entries
			(*
				Each entry looks like this:
				"G100	01	0001.jpg	Grad	Doe	John	HOMEROOM"
				A 'word' is a list of alphanumeric characters separated by spaces or periods.
				We're only interested in the 3rd, 4th, 6th, and 7th words.
			*)

			set imgPath to third word of entry & "." & fourth word of entry
			set lastName to sixth word of entry
			set firstName to seventh word of entry
			set fullName to firstName & " " & lastName
			set newSlide to make new slide at after last slide -- Make new slide for each entry
			set object text of default title item of newSlide to fullName -- Set the name
			set file name of first image of newSlide to (photos & "/" & imgPath) as POSIX file -- Set the image
		end repeat
	end tell
end tell
