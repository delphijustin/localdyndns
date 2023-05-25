This folder here contains Nirsoft Wireless Network Watcher(works on ethernet as well).
<p>
Update this file localdyndns.cfg before running localdyndns.bat<br>
Update the line in that file with the correct filepath to localdyndns.vbs<br>
<b>NewDeviceExecuteCommand=wscript C:\Users\administrator\localdyndns.vbs /mac:%mac_addr% /ip:%ip_addr% /domain:mac</b>
<br>
</p>
Replace the word "mac" in /domain:mac setting to the top level domain name you want it to be listed as in the host file.<br>
The hostname for each device will look like this:<br>
mac_address.domainname
