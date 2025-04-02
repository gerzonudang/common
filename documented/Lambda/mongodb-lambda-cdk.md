## 1. Setup your CDK project

### First, initialize a new CDK project, run these commands in your terminal:

- mkdir mongodb-lambda-cdk
- cd mongodb-lambda-cdk
- npx cdk init app --language typescript

### Install required dependencies

- npm install aws-cdk-lib constructs dotenv mongoose esbuild

## 2. Create the key files

### 1. CDK Stack (lib/mongodb-lambda-cdk-stack.ts)

### 2. CDK App (bin/mongodb-lambda-cdk.ts)

### 3. Build Script (bin/build.ts)

### 4. Lambda Function (src/index.ts)

## 3. Create Lambda Layer (deploy.sh)

## 4. Build and Deploy (deploy.sh)

# AWS CDK Setup for Cost-Efficient Daily Lambda

This CDK setup creates a **cost-efficient** and **serverless** Lambda function that:

- ✅ Runs on a schedule (once daily)
- ✅ Uses a Lambda Layer for dependencies
- ✅ Has secure storage for your MongoDB connection string
- ✅ Includes proper connection pooling
- ✅ Handles errors gracefully

---

## 🚀 Key CDK Commands

| Command                                  | Description                                                        |
| ---------------------------------------- | ------------------------------------------------------------------ |
| `npx cdk init app --language typescript` | Initialize a new CDK app with TypeScript                           |
| `npx cdk synth`                          | Generate the CloudFormation template                               |
| `npx cdk bootstrap`                      | Set up CDK deployment resources (run once per environment/account) |
| `npx cdk deploy`                         | Deploy the stack to AWS                                            |
| `npx cdk destroy`                        | Remove the stack from AWS                                          |
| `npx cdk diff`                           | Show the difference between local and deployed stack               |

---

## 💸 Cost Breakdown

| Resource                    | Monthly Cost | Notes                                            |
| --------------------------- | ------------ | ------------------------------------------------ |
| Lambda                      | $0           | Under free tier (1M invocations, 400k GB-s free) |
| EventBridge Rule            | $0           | First 100K events are free                       |
| MongoDB Atlas               | $0 (M0 tier) | Paid tiers start at ~$9/month                    |
| CDK Infra (S3/SSM metadata) | ~$0.10       | Minimal unless heavily used                      |

> **Total Monthly Cost: $0 – $0.10** (excluding MongoDB paid plans)

---

## ✅ Tips

- Package your Lambda with `tsup` or `esbuild` for smaller bundles.
- Use `.env` to manage secrets locally.
- Store secrets securely in AWS using **Secrets Manager** or **SSM Parameter Store**.
- Check logs in **CloudWatch Logs** to validate behavior.

---
