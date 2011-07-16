This is a simple script to download the latest 64 Bit Flash player from
[Adobe Labs][ADOBELABS] and install it locally in 
~/.mozilla/plugins.

It was [inspired][ASKUBUNTU] by the [Flash-Aid Plugin][FLASHAID] which
works similarly but is more complex (and less secure since it pulls the binary
from plain HTTP).

To run this script, you can execute

    wget -O- https://github.com/mss/getflashplugin64/raw/11/getflashplugin64.sh | /bin/bash

If you want to use the older version 10, you can run

    wget -O- https://github.com/mss/getflashplugin64/raw/10/getflashplugin64.sh | /bin/bash

Since this is a preview release of Flash, I recommend to use it together
with [Flashblock][FLASHBLOCK].


[ADOBELABS]:  <http://labs.adobe.com/technologies/flashplatformruntimes/flashplayer11/>
[ASKUBUNTU]:  <http://askubuntu.com/questions/51298/some-flash-moving-portions-displayed-incorrectly-in-firefox-5>
[FLASHAID]:   <http://www.webgapps.org/add-ons/flash-aid>
[FLASHBLOCK]: <https://addons.mozilla.org/en-US/firefox/addon/flashblock/>
