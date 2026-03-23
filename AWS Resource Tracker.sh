#!/bin/bash

###########################
# Author: Bikramjit
# Date: 23 March, 2026
#
# Version: v1
#
# This script will report the aws resource usage
###########################

set -x #running the script in debug mode

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourceTracker.md

# list ec2 instancs
echo "print list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker.md

# list aws lambda functions
echo "print list of lambda"
aws lambda list-functions > resourceTracker.md

# list iam users
echo "print list of iam users"
aws iam list-users > resourceTracker.md