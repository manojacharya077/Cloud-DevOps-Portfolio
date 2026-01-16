#!/bin/bash

# AWS Configuration
REGION="us-east-2"
CLUSTER_NAME="minecraft-cluster"
TASK_FAMILY="minecraft-task"

echo "Step 1: Registering Task Definition..."
aws ecs register-task-definition --cli-input-json file://fargate-task.json --region $REGION

echo "Step 2: Launching Task on Fargate..."
aws ecs run-task \
    --cluster $CLUSTER_NAME \
    --launch-type FARGATE \
    --task-definition $TASK_FAMILY \
    --network-configuration "awsvpcConfiguration={subnets=[YOUR_SUBNET_ID],securityGroups=[YOUR_SG_ID],assignPublicIp=ENABLED}" \
    --region $REGION

echo "Deployment initiated."

