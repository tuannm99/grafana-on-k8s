# launch
multipass launch --name single --memory 6G --cpus 6 --disk 50G

# get IP vm
multipass info single | grep IPv4
