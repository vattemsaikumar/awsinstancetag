# awsinstancetagging

This project is to add/update EC2 instance environment tag value(Dev/Prod/Test/SandPit/PreProd) for a group of instances under single account.

Pre-requisites:

 Set profile and credentials for aws account in .profile and .credentials. SSO login credentials used for this case.
 
 User/role should have update permissions on EC2
 
 Host file containing instanceid,region,tagvalue
 
 Successful SSO login before running the script
 
 Shell script, ansible plugin amazon.aws.ec2_tag used

Pass aws profile name to shell script as argument

./awsinstancetagging.sh <profilename>

This shell script will set AWS_PROFILE environment variable which is used to run playbook on the account associated with the profile


