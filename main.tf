/**
 * # ![AWS](aws-logo.png) IAM User Group
 *
 * Purpose: Provision IAM Group and associated users in AWS.
 *
 * Rationale: Apply standards and constraints to IAM Users.
 *
 * ![AWS IAM User Group](aws_iam_user_group.png)
 */
data "aws_caller_identity" "current" {}

resource "aws_iam_group" "usergroup" {
  name = var.name
}

resource "aws_iam_group_policy_attachment" "attached_policies" {
  count      = length(var.policies)
  policy_arn = var.policies[count.index]
  group      = aws_iam_group.usergroup.name
}

resource "aws_iam_user" "users" {
  count = length(var.users)
  name  = var.users[count.index]
}

resource "aws_iam_group_membership" "members" {
  name  = "${var.name}-group-membership"
  group = aws_iam_group.usergroup.name
  users = aws_iam_user.users[*].name
}
