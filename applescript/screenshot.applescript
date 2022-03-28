set fname to (display dialog "Filename" default answer "")
set date_ to ((current date) as string)

set imgname to get text returned of fname

do shell script "screencapture ~/Pictures/Screenshots/" & date_ & "_" & imgname & ".png"
