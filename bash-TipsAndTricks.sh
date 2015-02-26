#!/bin/bash

# sources used:
# http://cli.learncodethehardway.org/book/
# http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything
# http://lifehacker.com/5743814/become-a-command-line-ninja-with-these-time-saving-shortcuts



# in command line bootcamp, pick back up at: Moving Around (pushd, popd)



# keyboard shortcuts
# Ctrl + U # Clears the line from the cursor point back to the beginning.
# Ctrl + K # Kills the line from the cursor to the end
# Ctrl+W # This deletes the word before the cursor only.
# Ctrl + A # Moves the cursor to the beginning of the line.
# Ctrl + E # Moves the cursor to the end of the line.
# Ctrl + R # Allows you to search through the previous commands.
# Ctrl + C # terminate current process, get out of a bad command
# Ctrl + D # exit shell command
# Tab # autocomplete a line of text
# Up/Down Arrows # move through last used commands
# Option + Left/Right # move to the prev/next word
clear 


# basic commands
pwd # print working directory
hostname # my computer's network name
mkdir # make directory
cd # change directory
ls # list directory
rmdir # remove directory
pushd # push directory
popd # pop directory
cp # copy a file or directory
mv # move a file or directory
less # page through a file
cat # print the whole file
xargs # execute arguments
find # find files
grep # find things inside files
man # read a manual page
apropos # find what man page is appropriate
env # look at your environment
echo # print some arguments
export # export/set a new environment variable
exit # exit the shell
sudo # DANGER! become super user root DANGER!
chmod # change permission modifiers
chown # change ownership


# help etc.
bash -c "help set" # tells you what -p, etc. do


# last command
!!
sudo !!
!cat # last time I ran a command that used cat
!cat:p # last cat command gets printed
cd !$ # $ means use the argument (here, folder name) from your last command
history | grep nano # can run a result with !455 or whatever number


# move around
cd .. # go up
cd FolderName # relative path
cd ../../another/path # absolute path
cd - # last place you were


# list things
ls -lhtr
ls -lS
-l # detailed listing
-a # include hidden files
-h # human readable sizes
-t # sort by time modified
-r # reverse sort
-S # sort files by size
-F # show types of files
    # * executable file
    # / directory
    # @ symbolic link
    # = socket
    # % whiteout
    # | FIFO


# create and delete files, folders
mkdir foldername # new folder
rmdir foldername # delete folder if folder is empty
mkdir myfolder{1,2,3} # create three at once

touch filename # new file
rm filename # delete file
rm * # delete everything in the folder
rm –rf filename.* # delete files and folders, including in subdirectories


# chain commands with > or |
cat filename.list | grep keyword > filefound.list


# run a script
./scriptname.sh


# loops
for f in *.txt;do echo $f;done # loop through all the .txt files in the current directory and display them on the console


# find things
find . –name "*.txt" –mtime 5 # modified in the last 5 days
grep –ir "text string" * # current dir and below
# grep options
grep -h # show only match
grep -H # show match and filename (default)
grep -l # show all matching filenames
grep -L # show all non-matching filenames
grep -m NUM # stop grep after NUM matches


# rename things
rename –v 's/foo/bar/g' *




