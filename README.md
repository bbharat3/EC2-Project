# EC2-Project

Log into AWS console and perform the below
--------------------------------------------
	Generate security credentials (access key & secret key)
	Configure security group and restrict the inbound rule to port 22 and 80 for http

Install knife-ec2 gem on your workstation using below command
--------------------------------------------------------------
	gem install knife-ec2

Execute the ec2.sh script to create ec2 instance and executing cookbook on it using role.
Change the script according to the details.

usage: sh ec2.sh <no. of instance> <type of instance>
------

Create role using json
------------------------
	knife role from file ec2.json
