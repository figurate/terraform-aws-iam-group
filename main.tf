data "aws_caller_identity" "current" {}

resource "aws_iam_user" "user" {
  name = var.name
}

resource "aws_iam_user_policy_attachment" "attached_policies" {
  count      = length(local.userroles[var.userrole])
  policy_arn = local.userroles[var.userrole][count.index]
  user       = aws_iam_user.user.name
}
