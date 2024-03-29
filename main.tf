/**
 * # AWS IAM Group
 *
 * [![CI](https://github.com/figurate/terraform-aws-iam-group/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-aws-iam-group/actions/workflows/main.yml)
 *
 *
 * Purpose: Provision IAM Group and associated users in AWS.
 *
 * Rationale: Apply standards and constraints to IAM Users.
 *
 * ![AWS IAM User Group](aws_iam_group.png)
 *
 * <footer>
 *   <p style="text-align:center">
 *     <img src="aws-logo.png"/>
 *     Copyright &copy; 2022 <a href="https://www.figurate.org">figurate.org</a>
 *   </p>
 * </footer>
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
  #checkov:skip=CKV2_AWS_21:False positive
  #checkov:skip=CKV2_AWS_14:Allow empty group for now. May change in future..
  name  = "${var.name}-group-membership"
  group = aws_iam_group.usergroup.name
  users = aws_iam_user.users[*].name
}
