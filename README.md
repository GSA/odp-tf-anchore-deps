## odp-tf-twistlock-deps
It's a terraform module that allows you to create an IAM Role for Prisma Cloud Compute scanner to assume and run scan on repositories in Elastic Container Registry(ECR).

### How to use this module
```
module "twistlock_ecr_scan_role" {
  source = "github.com/GSA/odp-tf-twistlock-deps"
  twistlock_scanner_account_id  = "123456789"
  twistlock_scanner_external_id  = "1a1a1a1a-1234-1aa1-1234-1a1a1a1a1a1a"
  ecr_scan_role_name  = "twistlock_scanner"
}
```
### Input Variables
1. <ins>twistlock_scanner_account_id:</ins> - AWS Account that hosts Prisma Cloud Compute Scanner - Supplied during the time of Prisma Cloud Compute onboarding
2. <ins>twistlock_scanner_external_id</ins> - External ID that Prisma Cloud Compute Scanner uses to scan the ECR repository - Supplied during the time of Prisma Cloud Compute onboarding
3. <ins>ecr_scan_role_name</ins> - Name of the role that that Prisma Cloud Compute Scanner assumes for scanning. Choose your own name

### Output Values
1. <ins>ecr_scan_role_arn<ins> - Returns the name ARN of the role. SecOps team needs this to setup the scan on Prisma Cloud Compute Server
