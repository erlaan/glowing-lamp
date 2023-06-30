# glowing-lamp
This is a service i use to make sure a computer that is used for it-security is logging network-trafik from start.


# Prerequisite
To run this program tcpdump need to be installed
## Installation 
```
$ make install
```
# Running the Program

If you just need it one time run
```
$ systemctl start glowing-lampsvc.service
```
If you want it to run everytime you start your computer run command
```
$ systemctl enable glowing-lampsvc.service
```

# Todo 
