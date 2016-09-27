:: The next line makes a backup (.bak) version of the existing merged file, if any

copy TM_Merge.txt TM_Merge_backup.bak

:: The next line deletes the version it just made a backup of so that it won't be added to the merge

del TM_Merge.txt
pause

:: This 'for' loop will move through all files with ".txt" extensions in order of filename and combine them into a temp file

for %%I in (*.txt) do (
    type %%I >> merged.tmp
    echo. >> merged.tmp
)

:: This Line takes merged content in the temp file and saves it out as a text file

ren merged.tmp TM_Merge.txt
pause

