variable "anchore_scanner_account_id" {
  type        = string
  description = "AWS Account that hosts Anchore Scanner"
}

variable "anchore_scanner_external_id" {
  type        = string
  description = "External ID that Anchore Scanner uses to scan the ECR repository"
}

variable "ecr_scan_role_name" {
  type        = string
  description = "ECR Role that Anchore Scanner assumes for scanning"
}
