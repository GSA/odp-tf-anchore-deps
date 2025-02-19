resource "aws_iam_role" "twistlock_scanner_role" {
  name               = var.ecr_scan_role_name
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${var.twistlock_scanner_account_id}:root"
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "${var.twistlock_scanner_external_id}"
        }
      }
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "twistlock_remote_ecr_scan_policy" {
  role       = aws_iam_role.twistlock_scanner_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}
