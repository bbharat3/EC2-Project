#!/bin/bash

#Number of instances to be created
no_of_instances=$1

#Type of instance to be create
type=$2

count=0

# Replace <key name >, <private key file>, <username>, <region name>, <availability zone>, <security group> with actual values
#Instances will be created one by one
while [ $count -ne $no_of_instances ]
do
	knife ec2 server create  -I  ami-6edd3078 -f $type -S <key name> -i <private key file> --ssh-user <username> --region <region name> -Z <availability zone> -g <security group> -r 'role[nginx]'
done