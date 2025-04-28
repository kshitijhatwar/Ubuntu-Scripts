Find:
\;                                 → find runs the command once for each file found.                                #find /var/log -type f -name "*.log" -exec cp {} /tmp/logbackup/ \;
+                                  → find runs the command once for all matching files at once.                     #find /path/to/folder -type f -exec du -h {} + | sort -h | tail -n 5
-exec                              >run a custom command for every found file                                       #find /path/to/folder -type f -exec du -h {} + | sort -h | tail -n 5
-mtime n                           >Find files modified exactly n days ago.                                         #find /etc -mtime 7
-mtime +n                          >Find files modified more than n days ago.                                       #find /etc -mitme +7
-mtime -n                          >Find files modified less than n days ago.                                       #find /etc -mtime -7

-------------------------------------------------------------------------------------------------------------------
awk: Process and extract fields (columns) from text.
-F                                 >Set custom field separator                                                      #awk -F':' '{print $1}' /etc/passwd (Print first field separated by :)
'{print $n}'                       > Print specific column                                                          #awk '{print $2}' file.txt
/pattern/ {actiion}                > Match pattern and act                                                          #awk '/error/ {print $0}' logfile.txt
NR                                 > Print lines                                                                    #awk 'NR==n-1 || NR==n' n=$(wc -l < filename) filename


------------------------------------------------------------------------------------------------------------------------
sed: Stream editor for modifying text.
s/oldtext/newtext/                   >Substitute (replace) text                                                     #sed 's/apple/orange/' fruits.txt
-i                                   >Edit file in-place (no output on screen)                                      #sed -i 's/apple/orange/' fruits.txt
/text/d                              >Delete matching lines                                                         #sed '/error/d' logfile.txt
-n '/text/p'                         >Print only matching lines                                                     #sed -n '/error/p' logfile.txt


----------------------------------------------------------------------------------------------------------------------------
tee: Send output to a file and display it at the same time.
-a                                  >Append to file (do not overwrite)

--------------------------------------------------------------------------------------------------------------------------
grep: Search for patterns in text.
-i                                  >Ignore case                                                                    #grep -i error logfile.txt
-v                                  >Invert match (show lines NOT matching)                                         #grep -v error logfile.txt
-r                                  >Recursive search in directories                                                #grep -r "main()" /home/user/code/
-n                                  >Show line number with match                                                    #grep -n "error" logfile.txt


-----------------------------------------------------------------------------------------------------------------------------
egrep:  Same as grep -E (Extended grep).
-i                                  >Ignore case                                                                    #egrep -i'apple'(igneor all apple)
-v                                  >Invert match                                                                   #egrep -v'apple'(will print everythinx except apple)

----------------------------------------------------------------------------------------------------------------------------
cut: Extract sections (columns, characters) from text.
-d                                  >Set delimiter                                                                  #cut -d':' -f1 /etc/passwd (Cut first field by :)
-f                                  >Field number to extract                                                        #cut -d',' -f2 file.csv (Second field)
-c                                  >Specific characters                                                            #cut -c1-5 file.txt (First 5 characters)


----------------------------------------------------------------------------------------------------------------------------
tr: Translate (replace) or delete characters.
'a-z' 'A-Z'                         >Convert lowercase to uppercase
-d                                  >	Delete characters


----------------------------------------------------------------------------------------------------------------------------
sort: Sort text.
-r                                  >Reverse sort                                                                  #sort -r names.txt
-n                                  >Numerical sort                                                                #sort -n numbers.txt
-u                                  >Unique sort (remove duplicates)                                               #sort -u names.txt
-h                                  >human redable form(e.g., shows KB, MB, GB instead of raw byte numbers)        #du -ah | sort -h (sort files and directory according to their size)


-----------------------------------------------------------------------------------------------------------------------------
uniq: Filter out repeated lines.
(no option)                     	>Remove duplicates	                                                           #uniq file.txt
-c	                                >Count occurrences	                                                           #uniq -c file.txt
-d	                                >Show only duplicates	                                                       #uniq -d file.txt


------------------------------------------------------------------------------------------------------------------------------

