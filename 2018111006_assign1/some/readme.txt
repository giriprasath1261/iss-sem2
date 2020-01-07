Readme for all 6 QUESTIONS

QUESTION 1:

This question contains 5 seperate .sh files each for a different command.

For add.sh:
1. It has two flags "s" and "a" for songname and artist where songname is mandatory and artist is optional (used getopts for the flags).
2. In the program it assumes that there are already two files named id and playlist in the working directory.
3. The file id contains the latest id of the song added and playlist is the list of the added songs (using a seperate file called id for storing latest id).

For edit.sh
1. This program assumes there is a file named playlist already present which contains the added songs in the same directory.
2. But as the program first prints the existing playlist so if it empty the user cannot type any id.
This uses grep to find the id and prints the compliment into the same file thus deleting the line then a new line is added with the given arguments concatinated to the existing file with the same id.

For del.sh
1. same as edit.sh it also prints the existing playlist and the user can choose id from it.
We grep to find the song with the given id and compliments it and stores in the same file.

For viewall.sh
1. It also assumes that there exists a file named playlist which contains the previously entered songs.

For viewsel.sh
1. Asks for a condition to print the required songs inside the program and not on the command line.
Reads each line and prints the lines with the required arguments.

QUESTION 3:
Uses notify send to send notifications.
Uses sleep to delay the commands.

QUESTION 4:
Use dependencies.sh to install required commands.
The programs assume that there already exists a file named storage.txt . And it creates four files namely out.txt, out2.txt, rec_time.txt, storage.txt and temp.txt for smooth functioning of the programs.
these programs are based on the command 'at' and the notifications are gathered using the command 'atq'
the file storage.txt contains the notifications currently present
uses getopts for creating flags
***these programs use number of bytes to cut the specified lines so changes in the digits might affect the functioning***

There are four sh files in total for this program each for each command

1.add -- uses two flags "-b" , "-t" and "-h" for body,time and help respectively and flag inputs are compulsory.
The add program takes both time and date in -t itself ex: bash add.sh -t "9:00 Oct 2" -b hi.
2.del -- takes in a input of the id to be deleted.
3.edit -- uses four flags "-t" , "-b" , "-i" , "-h" for time,body,id,help respectively
4.list -- uses two flags "-d" , "-b" for date and body respectively all are optional and results will be accordingly.

QUESTION 5:
Has two sh files script1 and script2
script1 works on bash commands and script2 works on the csv files

QUESTION 6:
Assumption:
always give the file path as absolute and do not give a slash at the end of the file path
assuming there are movies already present in the path2
