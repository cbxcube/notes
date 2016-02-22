#!/usr/bin/perl
use 5.010;
use CGI;
$worker = CGI->new();

# Get form data
$first = $worker->param("txtFirst");
$last = $worker->param("txtLast");
$message = $worker->param("txtMessage");
 
#generate the response
say $worker -> header();
say $worker -> start_html("Name Form Results");
print <<End_of_HTML;
<h2>Name Form Results</h2>
<p>
<b>First Name: </b>$first<br>
<b>Last Name: </b>$last<br></p>
<p><b>Message:</b><br>
$message</p>
End_of_HTML
say $worker -> end_html;


