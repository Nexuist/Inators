set students to paragraphs of (read POSIX file "/index.txt")
set folderPath to "/images"
tell application "Keynote"
	tell front document
		repeat with entry in students
			set imgPath to third word of entry & "." & fourth word of entry
			set lastName to sixth word of entry
			set firstName to seventh word of entry
			set fullName to firstName & " " & lastName
			set newSlide to make new slide at after last slide
			set object text of default title item of newSlide to fullName
			set file name of first image of newSlide to alias (folderPath & imgPath)
		end repeat
	end tell
end tell
