#!/bin/bash

# Program to output a system infomation page
title="System Infomation Report for $HOSTNAME"
current_time=$(date +"%x %r %Z")
time_stamp="Generated $current_time, by $USER"

echo "<html>
    <head>
        <title>$title</title>
    </head>
    <body>
	<h1>$title</h1>
	<p>$time_stamp</p>
    </body>

</html>"
