#!/bin/bash
# Copyright (c) 2011 Malte S. Stretz <http://msquadrat.de>
# Inspired by Flash-Aid <http://www.webgapps.org/add-ons/flash-aid>

set -e

mkdir -p ~/.mozilla/plugins
cd ~/.mozilla/plugins

url="http://labs.adobe.com/downloads/flashplayer11.html"
url=$(wget -O- "$url" | sed -e '/_lin_64_/!d;s,^.*"http:\(//download.macromedia.com/[^"]*\)".*$,https:\1,')
test "$url"

file=$(basename "$url")
rm -f "$file"
trap "rm -f '$file'" EXIT

wget "$url"
tar xvf "$file" libflashplayer.so

