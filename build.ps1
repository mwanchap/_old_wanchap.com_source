$websiteDir = "C:\Code\mwanchap.github.io"
set-location $PSScriptRoot

# build the output
.\graze.exe

# move the generated output into the site's github dir
copy-item -Path ".\output\index.html" -Destination "$websiteDir\index.html"
copy-item -Path ".\output\assets\" -Destination $websiteDir -Recurse -Force

write-host "Copied output into website dir"
write-host "Now cd over to $websiteDir, commit and push"