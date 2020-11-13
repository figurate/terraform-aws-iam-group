variable "name" {
  description = "IAM user name"
}

variable "userrole" {
  description = "Identifier for the user role"
}

variable "users" {
  description = "A list of users included in the user group"
  type        = list(string)
  default     = []
}
