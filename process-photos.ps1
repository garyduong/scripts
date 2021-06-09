$config = ([xml](Get-Content Config.xml)).root
# move photos to "C:\Users\%UserProfile%\Pictures"
Set-Location -Path $config.UploadFolder
Move-Item -Path .\*.jpg -Destination $config.PhotosFolder
Move-Item -Path .\*.mp4 -Destination $config.VideosFolder
# batch rename photos to YYYY-MM-DD HH:MM:SS.jpg
Set-Location -Path $config.PhotosFolder
Get-ChildItem *.jpg | Rename-Item -NewName { $_.BaseName.substring(0,19) + $_.Extension }