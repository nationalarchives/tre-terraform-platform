data "aws_iam_policy_document" "tre_terraform_backend" {
  statement {
    effect    = "Allow"
    actions   = ["iam:*"]
    resources = ["*"]
  }
}

data "aws_caller_identity" "management" {
  provider = aws
}

data "aws_caller_identity" "users" {
  provider = aws.users
}

data "aws_caller_identity" "nonprod" {
  provider = aws.nonprod
}

data "aws_caller_identity" "prod" {
  provider = aws.prod
}
