
                              |     <'(((><            
             PowerPhish       J  >'(((><               
                                  <'(((><              
                                                        
            By:  Kirk Hayes (l0gan - @kirkphayes)       
                                                        

------------------------------------------------------------------------------
 THIS CODE AND ANY ASSOCIATED INFORMATION ARE PROVIDED “AS IS” WITHOUT
 WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT
 LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
 FOR A PARTICULAR PURPOSE. THE ENTIRE RISK OF USE, INABILITY TO USE, OR 
 RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.

------------------------------------------------------------------------------
 USAGE:
 PowerPhish is a Powershell script to perform phishing  
 Set the variables below:<br>
 	emailSmtpServer = Server to connect to in order to send emailFrom<br>
 	emailSmtpServerPort = Port to connect to (ie. 110 or 587)<br>
 	SourceRCPT = Email address to send as (also used to authenticate to mail server - Will be prompted to enter password)<br>
 	DestFile = File containing email addresses to send to. - Will read each email and send one at a time.<br>
 	BodyFile = File containing body of email. - Write in HTML format, or change '$emailMessage.IsBodyHtml = $true' to<br> '$emailMessage.IsBodyHtml = $false'
 	SubjectLine = Line for subject<br>
	Pass = Password for authenticating to mail server<br>
 ------------------------------------------------------------------------------
