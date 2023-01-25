net stop bits
net stop wuauserv
net stop appidsvc
net stop cryptsvc

Ren C:\windows\system32\catroot2 catroot2.old
Ren C:\windows\SoftwareDistribution SoftwareDistribution.old

net start bits
net start wuauserv
net start appidsvc
net start cryptsvc