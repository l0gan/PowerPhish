write-host "
##########################################################
#                              |     <'(((><             #
#             PowerPhish       J  >'(((><                #
#                                  <'(((><               #
##########################################################
#                                                        #
#            By:  Kirk Hayes (l0gan - @kirkphayes)       #
#                                                        #
##########################################################
"
#------------------------------------------------------------------------------
# THIS CODE AND ANY ASSOCIATED INFORMATION ARE PROVIDED “AS IS” WITHOUT
# WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT
# LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
# FOR A PARTICULAR PURPOSE. THE ENTIRE RISK OF USE, INABILITY TO USE, OR 
# RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.
#
#------------------------------------------------------------------------------
# AUTHOR(s):
# Kirk Hayes (l0gan - @kirkphayes)  
# 05/2015      
#
#------------------------------------------------------------------------------
# USAGE:
# PowerPhish is a Powershell script to perform phishing  
# Set the variables below:
# 	emailSmtpServer = Server to connect to in order to send emailFrom
# 	emailSmtpServerPort = Port to connect to (ie. 110 or 587)
# 	SourceRCPT = Email address to send as (also used to authenticate to mail server - Will be prompted to enter password)
# 	DestFile = File containing email addresses to send to. - Will read each email and send one at a time.
# 	BodyFile = File containing body of email. - Write in HTML format, or change '$emailMessage.IsBodyHtml = $true' to '$emailMessage.IsBodyHtml = $false'
# 	SubjectLine = Line for subject
# ------------------------------------------------------------------------------




$emailSmtpServer = "smtp.gmail.com"
$emailSmtpServerPort = "587"
$SourceRCPT = "HelpDesk@example.com"
$DestFile = "emailTargets.txt"
$BodyFile = "emailBody.txt"
$SubjectLine = "Password Expiration Notice"
$Pass  = "$up3r$3cr3tP@ss"

# Start Loop for Email Sending
$file = Get-Content $DestFile
$body = Get-Content $BodyFile
					
foreach ($line in $file){
	$DestinationRCPT = $line.Split(",")[0]
	$firstName = $line.Split(",")[1]
	$lastName = $line.Split(",")[2]

	$body =(Get-Content $BodyFile) | foreach-object {$_ -replace '\[firstName\]',$firstName}| foreach-object {$_ -replace '\[lastName\]',$lastName}
	$emailSmtpUser = "$SourceRCPT"
	$emailSmtpPass = "$Pass"
	
	$emailFrom = "$SourceRCPT"
	$emailTo = "$DestinationRCPT" 
	
	$emailMessage = New-Object System.Net.Mail.MailMessage( $emailFrom , $emailTo )
	$emailMessage.Subject = $SubjectLine
	$emailMessage.IsBodyHtml = $true
	$emailMessage.Body = $body

	$SMTPClient = New-Object System.Net.Mail.SmtpClient( $emailSmtpServer , $emailSmtpServerPort )
	$SMTPClient.EnableSsl = $true
	$SMTPClient.Credentials = New-Object System.Net.NetworkCredential( $emailSmtpUser.Split("@")[0] , $emailSmtpPass ); 
	$SMTPClient.Send( $emailMessage )
	Write-Host "Sending Email to $DestinationRCPT"
}
Write-Host "Emails sent successfully...I think..."
