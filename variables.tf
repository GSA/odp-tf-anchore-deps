variable "twistlock_scanner_account_id" {
  type        = string
  description = "AWS Account that hosts Prisma Cloud Compute Scanner"
}

variable "twistlock_scanner_external_id" {
  type        = string
  description = "External ID that Prisma Cloud Compute Scanner uses to scan the ECR repository"
}

variable "ecr_scan_role_name" {
  type        = string
  description = "ECR Role that Prisma Cloud Compute Scanner assumes for scanning"
}
