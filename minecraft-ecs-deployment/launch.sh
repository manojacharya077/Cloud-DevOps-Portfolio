#!/bin/bash

# AWS Configuration
REGION="us-east-2"
CLUSTER_NAME="minecraft-cluster"
TASK_FAMILY="minecraft-task"

echo "Step 1: Registering Task Definition..."
aws ecs register-task-definition --cli-input-json file://task-definition.json --region $REGION

echo "Step 2: Launching Task on EC2 Instance..."
aws ecs run-task \
    --cluster $CLUSTER_NAME \
    --launch-type EC2 \
    --task-definition $TASK_FAMILY \
    --region $REGION

echo "Deployment initiated."

