#!/usr/bin/perl
use 5.010;
use CGI

$q = CGI -> new();
$name = $q  -> param("txtName");
$email = $q -> param("txtEmail");
$message = $q -> param("txtMessage");
  
say $q->header();
say $q -> start_html("Form CGI");
print <<EndofHTML;
<h3>Here is the infomation from the form</h3>
<p>
<b>Name: </b>$name<br>
<b>E-Mail: </b>$email<br>
<b>Message: </b><br>
<p>
$message
</p>
EndofHTML
say $q -> end_html();
