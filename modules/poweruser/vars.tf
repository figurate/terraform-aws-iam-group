variable "name" {
  description = "IAM group name"
}

variable "users" {
  description = "A list of users included in the user group"
  type        = list(string)
  default     = []
}
