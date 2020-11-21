#!/bin/bash
set -e

echo "Creating infrastructure"
sam deploy \
   --template template.yaml 
   