## odp-tf-anchore-deps
It's a terraform module that allows you to create an IAM Role for Anchore scanner to assume and run scan on repositories in Elastic Container Registry(ECR).

### How to use this module?
```
module "anchore_ecr_scan_role" {
  source = "github.com/GSA/odp-tf-anchore-deps"
  anchore_scanner_account_id  = "123456789"
  anchore_scanner_external_id  = "1a1a1a1a-1234-1aa1-1234-1a1a1a1a1a1a"
  ecr_scan_role_name  = "anchore_scanner"
}
```
### What are these input variables?
1. <ins>anchore_scanner_account_id:</ins> - AWS Account that hosts Anchore Scanner - Supplied during the time of Anchore onboarding
2. <ins>anchore_scanner_external_id</ins> - External ID that Anchore Scanner uses to scan the ECR repository - Supplied during the time of Anchore onboarding
3. <ins>ecr_scan_role_name</ins> - Name of the role that that Anchore Scanner assumes for scanning. Choose your own name

### What are the output values?
1. <ins>ecr_scan_role_arn<ins> - Returns the name ARN of the role. SecOps team needs this to setup the scan on Anchore Server
