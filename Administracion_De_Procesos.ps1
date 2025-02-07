#Get-Process

Get-Process

Get-Process -Name Acrobat

Get-Process -Name Search* 

Get-Process -Id 13948

Get-Process WINWORD -FileVersionInfo

Get-Process WINWORD -IncludeUserName

Get-Process WINWORD -Module 



#Stop-Process

Stop-Process -Name Acrobat -Confirm -PassThru

Stop-Process Id 10940 -Confirm -PassThru 

Get-Process -Name Acrobat | Stop-Process -Confirm -PassThru 


#Start-Process

Start-Process -FilePath “C:\Windows\System32\notepad.exe” -PassThru

Start-Process -FilePath “cmd.exe” -ArgumentList “/c mkdir NuevaCarpeta”  -WorkingDirectory “D:\Documents\FIC\Q6\AS0” -PassThru

Start-Process -FilePath “notepad.exe” -WindowStyle “Maximized” -PassThru

Start-Process -FilePath “D:\Documents\FIC\Q6\ASO\TT\TT.txt”  -Verb Pronto -PassThru 


#Wait-Process
Get-Process -Name notep*

Wait-Process -Name notepad
Get-Process -Name notep*


Get-Process -Name notepad
Wait-Process -Id 11568
Get-Process -Name notep*

Get-Process -Name notep*
Get-Process -Name notepad | Wait-Process 
