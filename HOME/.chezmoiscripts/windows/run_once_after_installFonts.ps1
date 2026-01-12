$fontFolder = (New-Object -ComObject Shell.Application).Namespace(0x14)
Get-ChildItem -Path $env:USERPROFILE\.local\share\fonts -Recurse -Include *.ttf | %{ $fontFolder.CopyHere($_.fullname) }
