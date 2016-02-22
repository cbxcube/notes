#!/usr/bin/perl -w

use CGI(":standard");

$name = param("txtName");
$email = param("txtEmail");
$message = param("txtMessage");

print <<EndofHTML
Content-Type: text/html\n\n
<html>
<head><title>Form CGI</title></head>
<body>
<h3>Here is the infomation from the form</h3>
<p>
<b>Name: </b>$name<br>
<b>E-Mail: </b>$email<br>
<b>Message: </b><br>
<p>
$message
</p>
</p>
</body>
</html>
EndofHTML
