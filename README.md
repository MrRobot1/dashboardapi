﻿# dashboardapi

## Description
A small http api project for DevOps learning purposes

## Used components

### AWS

- Cloudformation
- ECS
- ECR
- ALB
- IAM
- SSM Parameter Store

### Github Actions pipeline

Fetch Code -> Test (Maven) -> Build / Deploy Docker image to ECR -> Update ECS task definition
