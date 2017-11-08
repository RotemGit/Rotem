function Get-Time {
aaa
   [CmdletBinding()]
   param(
      [Parameter(Position=0, Mandatory=$true)]
      [ValidateNotNullOrEmpty()]
      [System.String]
      $ServerName,
 
      $Credential
 
   )
   try {
         If ($Credential) {
            $DT = Get-WmiObject -Class Win32_LocalTime -ComputerName $servername
         } Else {
            $DT = Get-WmiObject -Class Win32_LocalTime -ComputerName $servername
         }
   }
   catch {
      throw
   }
 
   $Times = New-Object PSObject -Property @{
      ServerName = $DT.__Server
      DateTime = (Get-Date -Day $DT.Day -Month $DT.Month -Year $DT.Year -Minute $DT.Minute -Hour $DT.Hour -Second $DT.Second)
   }
   $Times
 
}

#Get the time from the servers

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fx-db-pr1"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fx-db-pr1 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fx-db-pr1"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fx-db-pr3"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fx-db-pr3 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fx-db-pr3"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fx-srv-pr1"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fx-srv-pr1 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fx-srv-pr1"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fx-srv-pr2"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fx-srv-pr2 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fx-srv-pr2"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fx-srv-pr3"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fx-srv-pr3 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fx-srv-pr3"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fx-srv-pr5"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fx-srv-pr5 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fx-srv-pr5"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fx-srv-pr6"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fx-srv-pr6 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fx-srv-pr6"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr1"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr1 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr1"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr2"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr2 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr2"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr3"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr3 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr3"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr4"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr4 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr4"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr5"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr5 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr5"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr6"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr6 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr6"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr7"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr7 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr7"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr8"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr8 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr8"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr9"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr9 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr9"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr10"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr10 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr10"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr11"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr11 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr11"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr12"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr12 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr12"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr13"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr13 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr13"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr14"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr14 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr14"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr15"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr15 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr15"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr16"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr16 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr16"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr17"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr17 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr17"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr18"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr18 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr18"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr19"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr19 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr19"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxtrd-iis-pr20"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxtrd-iis-pr20 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxtrd-iis-pr20"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxdlr-iis-pr1"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxdlr-iis-pr1 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxdlr-iis-pr1"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxdlr-iis-pr2"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxdlr-iis-pr2 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxdlr-iis-pr2"
}

#compare the time between 2 servers
$RemoteServerTime = Get-Time -ServerName "fxdlr-iis-pr3"
$LocalServerTime = Get-Time -ServerName "monitorams"
 
$Skew = $LocalServerTime.DateTime - $RemoteServerTime.DateTime
 
# Check if the time is over 2 seconds
If (($Skew.TotalSeconds -gt 2) -or ($Skew.TotalSeconds -lt -2)){
   Send-MailMessage -to itprod@iforex.com -from ClockTest@iforex.com -Subject "Time at fxdlr-iis-pr3 is at ~2 seconds offset " -SmtpServer amsmail.efix.local
} Else {
   Write-Host "Time checked ok on fxdlr-iis-pr3"
}



exit