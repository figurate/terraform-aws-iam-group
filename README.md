# ![AWS](aws-logo.png) IAM User

Purpose: Provision IAM User in AWS.

Rationale: Apply standards and constraints to IAM Users.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | IAM user name | `any` | n/a | yes |
| userrole | Identifier for the user role | `any` | n/a | yes |
| users | A list of users included in the user group | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| user\_name | n/a |

