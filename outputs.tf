output "ecr_scan_role_arn" {
  value = aws_iam_role.twistlock_scanner_role.arn
}
