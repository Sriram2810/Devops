#!/bin/bash



####
# Author: Sriram
# Date: 04 Nov 23



# This code is used to track the aws resource usage

#s3 buckets
echo "Print s3 buckets usage"
aws s3 ls


# ec2 instances
echo "ec2 instances usage"
aws ec2 describe-instances

# lambda functions
echo "lambda functions list"
aws lambda list-functions

#iam users
echo "Printing iam users"
aws iam list-users



#instanceids alone printed
echo "instanceids"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


