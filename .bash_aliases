#Making some commands faster to type
alias x=exit
alias cl=clear
alias s=screen
alias sr="screen -r"

#Making files listed with "ls" clickable
alias ll="ls -l --hyperlink"

#Aliases to take quick screenshots, and to a counter python script I made
alias snip="scrot -s ~/Pictures/Snips/capture.png"
alias k="~/Scripts/counter.py"

#Functions that download youtube videos/network streams via VLC media player
ydl(){
  #Run VLC with no interface, open the target network stream, and output to mp4 file using the appropriate muxer
  cvlc $1 vlc://quit --sout=file/mp4:$2.mp4
}
ydm(){
  #Same as the above command, but using an audio only muxer instead
  cvlc $1 vlc://quit --sout=file/ogg:$2.ogg
}
