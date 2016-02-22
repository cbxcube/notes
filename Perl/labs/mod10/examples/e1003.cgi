#!/usr/bin/perl -w
use CGI(":standard");

# Get form data
$first = param("txtFirst");
$last = param("txtLast");
$message = param("txtMessage");

print <<End_of_HTML
Content-type: text/html\n\n
<html>
<head><title>Name Form Results</title></head>
<body bgcolor="FFFFFF">
<h2>Name Form Results</h2>
<p>
<b>First Name: </b>$first<br>
<b>Last Name: </b>$last<br></p>
<p><b>Message:</b><br>
$message</p>
</body>
</html>
End_of_HTML

