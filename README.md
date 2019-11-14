# RemoteMajBash
Script that maje every maj with ssh's connexions

## CARE !
you need to start ssh on every wanted machine and main machine
you need to install sshpass, or you'll have to enter the password manually for each loops
you need to install nmap if you want to update all of your system from nmap
NMAP
- https://nmap.org/
SSHPASS
- https://linux.die.net/man/1/sshpass

### Possibilities
1. you can update all of you system [with nmap]
2. you can update from arrays setted in the bash file
3. you can update from a csv file

your csv file is like :

host(ip),username,password

exemple:
192.168.1.25,user-exemple,myPassword
