#/bin/bash
export AWS_PROFILE=$1
echo "Profile configured as - $AWS_PROFILE"
while IFS=, read -r instance region tagvalue; do
	echo "Adding/Updating $instance in location $region with Environment tag as $tagvalue"
	ansible-playbook /home/adm-svattem/scripts/awsinstancetagging/awsinstancetagging.yaml --extra-vars="instanceid=$instance region=$region tagvalue=$tagvalue"
done < /home/adm-svattem/scripts/awsinstancetagging/hosts.txt
