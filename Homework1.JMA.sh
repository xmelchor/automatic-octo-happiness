#!/usr/bin/sh


#Homework 1
#Part 1: Questions

#1. What is a GUI and how does that differ from the CLI?
#Answer: the GUI is how you interact with your computer, its how you can open programs and select/edit files on your desktop and such. GUI is different from your CLI because with CLI you are directly giving commands to your comupter to be interpreted and actions are carried out directly through coding into your computers programming. GUI gives you the menu style of navigation while CLI is like tech speaking to your computer with direct code.

#2. What does the shell do?
#Answer: It gives you access to the CLI and is what you put your code in to interact with your computer (no mouse)

#3. What is the command used for listing things in a directory?
#Answer: ls

#4. What is the command used for changing directories?
#Answer: cd 

#5. What command would you use to get your current working directory?
#Answer: pwd for Unix

#6. How do you get the manual for these commands?
#Answer: man

#7. What does the shell prompt look like?
#Answer: $

#8. How would you list things in a directory in chronological order?
#Answer: ls -lt

#9. Name two ways to get to the ‘home’ or ‘root’ directory.
#Answer: cd OR cd ~

#10. What is the difference between an absolute path and a relative path?
#Answer: absolute requires the root directory and full pathway typed out for direct navigation to a directory; while relative path connects the path you've typed in with another path already open.

#11. What are the two relative path directories we talked about and what do they mean?
#Answer: moving up a directory .. or moving relative to your current directory . 

#12. Why shouldn’t you put spaces in filenames?
#Answer: spaces have meaning in the shell when you run scripts and programs. So a space can mean something specific you didn't intend if you have it in a file name and try to run scripts on that file.
###because programs read arguments fed to them which are separated by spaces. The program will read the string after the space as another argument. 


#13. Name a way to have multiple readable words in a filename without spaces?
#Answer: dashes - or the alternating capital thing: LikeThis

#14. What is the program nano, what does it do? Do you use nano? If not what do you use?
#Answer: nano is a command line text editor for Unix. I do not use nano. I use Sublime for my Ubuntu on VMware 

#15. * is a form of a wildcard. What does it mean?
#Answer: it just represents other characters and is a placeholder like when we want to say find anything ending with .txt we use *.txt
###* just matches any character

#16. The following code would match what? ls *.txt
#Answer: oops, answered above kinda. So this just matches any files that have .txt in the file name

#17. Why do we need to be careful with the mv command?
#Answer: you can accidently overwrite existing files and subsequently delete the original stuff

#18. Why do we need to be careful with the rm command?
#Answer: you can accidently permanently delete a file or directory and lose it all so to speak

#19. What is the difference between > and >>?
#Answer: the > redirects output to somewhere specified and can be used to overwrite files while the >> appends the output to a file or can make one if no file yet exists

#20. What does head do?
#Answer: shows you the first bit of a file

#21. What is the purpose of | (pipe)?
#Answer: to join multiple commands together and continue a program such as a loop or something

#22. Interpret the following command: cat huge_file.fasta | uniq | head -n 5 >proteins.fasta
#Answer: your creating the proteins.fasta file using the first unique 5 lines of the huge_file.fasta directory (maybe this is creating a dummy directory). I think.
### you got it. not creating a dummy directory

#23. What is a loop and when would you use it?
#Answer: its a program that repeats lines of code through an entire file or specified part of a file to do 1 or more operations and edits to said file

#24. In a directory with the following files. What would the following loop do? apple.txt, banana.txt, orange.txt $ for filename in *.txt; do > cat ${filename} >>fruits.txt > done
#Answer: um your searching for all filenames containing .txt and telling it to show the filename and append it to the fruits.txt file and then ending the for loop
### it is appending the contents of each of the files ending in *.txt to a new file fruits.txt

#25. What is a shell script?
#Answer: its a chain of commands or single program of many commands for the Unix shell or terminal to run as operations

#26. What are the benefits of writing and running a script over typing the code in?
#Answer: you don't have to remember and type the syntax every time you want to manipulate or analyze data as you add to a data file or work with a data file that is new but structurally similar. It makes it easier to publish your methods and statistics sections in journals.and you can doccument or annotate what you are doing for later reference to your coding commands.
### nice!

#27. When looking at a script what does # mean? Why would you use one?
#Answer: this lets the shell know to ignore what is typed on that line of code so that you can make notes and document what you're doing as you code

#28. What does grep stand for and what does it do?
#Answer: it searches for lines that match a regular expression you type in and will print the lines that match what you greped
### what does it stand for

#29. What does find do?
#Answer: it finds everything in a directory that you are trying to search for, it can also find among files and directories




#Part 2: Writing Code :(

#1. Open the shell and change directories to the desktop and list the contents, paste your code here.

cd ./Desktop/

#what does the . do here?


#2. Draw the file structure from the root directory into one of the folders on the desktop. You can submit a pdf with a drawing. Select three locations and type the commands for changing directories to those locations use a combination of absolute and relative paths.

#So for my computer (or rather my virtual machine) I do not have access to the usrs and bin folders. Everything is under the home folder as a root directory.
cd ./Desktop/DataScience2
cd ./Desktop/DataScience2/Homework1
cd /home/sheets/Desktop

#### nice job on this .. not sure why there are . in front of all of these.  

#3. On your computer create a directory on your desktop. Create two files without opening them that have file extensions .txt. Then use wildcards to list the files in that directory. Paste you code here.

#first changed my directory to be in Desktop
cd ./Desktop/

#Then make a new directory called DataScience2
mkdir DataScience2

#Then create 2 new files ending in .txt after making sure I'm in the DataScience2 directory
cd ./DataScience2/
touch FirstFile.txt
touch SecondFile.txt

#Now use * wildcard to list .txt files in this directory
ls *.txt




#4. Download the file Hutia_DNA.fasta from the Github repo. Make a new directory on the desktop. Move the file into that directory. List the contents of the directory. How many lines are in this file? Fasta files are a type of data file that holds DNA sequences. They are all formatted the same. The first line starts with a > and a name followed by a line break, and then DNA sequence followed by a line break. The next line starts with an > and another name followed by a line break and the DNA sequence. With that in mind, how could you use linux commands to determine how many sequences are in this file? How many sequences are in this file?

# So first I download the old person way by clicking download on the github page for this zip folder. I then use my mouse (I know scandalous) to drag it into the DataScience2 folder. and then code to unzip it!  ### Ok so the .fasta file was not in the data shell zip folders, nor did I see it on the github repo for our class. So I had it sent to me by Lauren Benedict who had the file from a prior semester. So I am downloading and then manually putting it in my directory for this file.

unzip data-shell.zip
#Ignore above now. Next I make new directory for the fasta file
mkdir Hutia

#Now I want to see how many lines there are in the fasta file so make sure I'm in that directory and do word count for lines function 
wc -l Hutia_DNA.fasta

#Gives me output of 2382004

#Next I want to count how many sequences there are. You can use grep to find every > character to get the number of sequences.
grep -c ">" Hutia_DNA.fasta

#Gives me output of 1191002; I'm confused why this is not the same as my line count given the > should be at the beginning of every line?

#### in a fasta file the '>' is only on the name line so it is on every other line.  Nice job you did this right!




#5. Build a single line of code that would take the first 100 sequences of this file and put them in a new file called ‘MyOutputFile.fasta’. Use a combination of wc, sort and uniq in a single line of code to tell me how many unique lines are in this file. Paste your commands and the answer here.


# Ugh so when you use cat you put the name of the existing file first and then the name of the file you want to create. Don't do it like in R where you think you are creating and naming this new file on the left of the pacman
#### good point!


#Ok so i create new file by using cat [name of old file] and then pipe the grep function to look for any sequences (done by looking for something beginning with AGCorT). Then I pipe the head function so that it pulls the first 100 of those sequences found with grep. the pacman is used followed by [newfilename] to officially create new file.
cat Hutia_DNA.fasta | grep '^[AGCT]' | head -n 100 >MyOutputFile.fasta

# Now that I made the file requested I need to sort the file so that I can then use the unique function and wc -l to see how many unique lines or sequences I have in this file 
#Output for wc -l was 99
sort MyOutputFile.fasta | uniq | wc -l

### well done!




#6. Write code that would create a loop to copy all the files in one directory ending in .txt to another directory. Paste the code here.

#made new directory for copied things call HomeworkCopy
mkdir HomeworkCopy

#Then try for loop copying all file of .txt into new directory

#for file in *.txt
#	do cp -R ../HomeworkCopy
#	echo $file
#done
### this is not actually copying the file - this would copy the directory as many times as files you have

### for file in *.txt
### do
### cp $file HomeworkCopy/
### done
###

#Above was attempted and failed because I was telling it the wrong place to copy to 

#So i do my for loop by saying for [variable] in *.txt (all files in my current directory with .txt); do cp (copy) 'direct path to folder I want them copied into'; echo each file; and done

for file in *.txt; do cp ~/Desktop/DataScience2/*.txt HomeworkCopy; echo $file; done
### almost -- still not copying the file - but I see what you were doing and nice job with the loop structure




#7. Write a bash script with in-line documentation (hint #) to show how to run a made up python program (script) called 'find_taxa.py' on set of files ending in ‘.fasta’. Show in the script how to run the program on each of those files. What is the name of your script? Type the script here.

#So I'm not sure I'm doing this right but I would make a bash script just as I am here in this homework. But for this problem I would have a script as follows:

#So I would start with the line for my bash shell script
!/bin/bash

#I would name my bash script hmwk1_7 by saving it on my computer

#Then I would put in my bash script a line that will run my made up python script that should have a line within it to loop through fasta files? Not sure I'm interpretting that correctly.
python find_taxa.py 

#so now I need to change the bash script file to be executable:
chmod u+x hmwk1_7.sh

#lastly I run the bash script that will execute the python program:
./hmwk1_7.sh

## great work the only thing you are missing is the loop part
### !#/usr/bin/bash
## for file in *.txt
## python find_taxa.py $file
## done




#8. From the Hutia_DNA.fasta file tell me how on how many lines do we find the pattern ‘GAGA’. What was the code used to find this?

#used grep to search for pattern "GAGA" and used -c to count occurences

grep -c "GAGA" Hutia_DNA.fasta

#304806 was output for occurences of GAGA in lines