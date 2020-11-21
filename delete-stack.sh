#!/bin/bash
set -e

aws cloudformation delete-stack --stack-name wordputter-infra --profile personal --region us-east-1
