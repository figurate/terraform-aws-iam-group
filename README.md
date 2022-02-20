# AWS IAM User Group

Purpose: Provision IAM Group and associated users in AWS.

Rationale: Apply standards and constraints to IAM Users.

![AWS IAM User Group](aws\_iam\_group.png)

<footer>
  <p style="text-align:center">
    <img src="aws-logo.png"/>  
    Copyright &copy; 2022 <a href="https://www.figurate.org">figurate.org</a>
  </p>
</footer>

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

