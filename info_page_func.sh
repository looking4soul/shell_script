#!/bin/bash

# Program to output a system infomation page
title="System Infomation Report for $HOSTNAME"
current_time=$(date +"%x %r %Z")
time_stamp="Generated $current_time, by $USER"

function report_uptime {
	#echo "report uptime executed."
	cat <<- _EOF
		<h2>System uptime</h2>
		<pre>$(uptime)</pre>
		_EOF
	return
}
function report_disk_space {
	#echo "report disk space executed."
	cat <<- _EOF
		<h2>Disk space</h2>
		<pre>$(df -h)</pre>
		_EOF
	return
}

function report_home_space {
#	echo "report home sapce executed."
	cat <<- _EOF
		<h2>Home space</h2>
		<pre>$(du -sh /home/*)</pre>
		_EOF
	return
}
cat <<- _EOF_
<html>
    <head>
        <title>$title</title>
    </head>
    <body>
	<h1>$title</h1>
	<p>$time_stamp</p>
	$(report_uptime)
	$(report_disk_space)
	$(report_home_space)
    </body>

</html>
_EOF_
