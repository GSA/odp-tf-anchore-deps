output "ecr_scan_role_arn" {
  value = aws_iam_role.anchore_scanner_role.arn
}
