##########################################################
#                              |     <'(((><             #
#             PowerPhish       J  >'(((><                #
#                                  <'(((><               #
##########################################################
#                                                        #
#            By:  Kirk Hayes (l0gan - @kirkphayes)       #
#                                                        #
##########################################################

#------------------------------------------------------------------------------
# THIS CODE AND ANY ASSOCIATED INFORMATION ARE PROVIDED “AS IS” WITHOUT
# WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT
# LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
# FOR A PARTICULAR PURPOSE. THE ENTIRE RISK OF USE, INABILITY TO USE, OR 
# RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.
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
#	Pass = Password for authenticating to mail server
# ------------------------------------------------------------------------------
