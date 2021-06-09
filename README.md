# ![AWS](aws-logo.png) IAM User Group

Purpose: Provision IAM Group and associated users in AWS.

Rationale: Apply standards and constraints to IAM Users.

![AWS IAM User Group](aws\_iam\_user\_group.png)

![main workflow](https://github.com/figurate/terraform-aws-iam-usergroup/actions/workflows/main.yml/badge.svg)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | IAM group name | `any` | n/a | yes |
| policies | A list of IAM policies to attach to the group | `list(string)` | `[]` | no |
| users | A list of users included in the user group | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| user\_name | n/a |

