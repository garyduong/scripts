# move photos to "C:\Users\%UserProfile%\Pictures"
Set-Location -Path "C:\Users\Public\Downloads"
Move-Item -Path .\*.jpg -Destination "C:\Users\Public\Pictures"
Move-Item -Path .\*.mp4 -Destination "C:\Users\Public\Videos"
# batch rename photos to YYYY-MM-DD HH:MM:SS.jpg
Set-Location -Path "C:\Users\Public\Pictures"
Get-ChildItem *.jpg | Rename-Item -NewName { $_.BaseName.substring(0,19) + $_.Extension }
Get-ChildItem *.jpg | Rename-Item -NewName { $_.BaseName.substring(0,19) + $_.Extension }