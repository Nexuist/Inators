set dataFolder to (POSIX path of ((path to me as text) & "::")) & "Data"
set entries to paragraphs of (read dataFolder & "/Students.txt")
set photos to dataFolder & "/Pictures"
set template to dataFolder & "/Template.key"

tell application "Keynote"
	open template
	tell front document
		repeat with entry in entries
			set imgPath to third word of entry & "." & fourth word of entry
			set lastName to sixth word of entry
			set firstName to seventh word of entry
			set fullName to firstName & " " & lastName
			set newSlide to make new slide at after last slide
			set object text of default title item of newSlide to fullName
			set file name of first image of newSlide to (photos & "/" & imgPath) as POSIX file
		end repeat
	end tell
end tell
