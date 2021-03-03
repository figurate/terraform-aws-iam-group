module "usergroup" {
  source = "../.."

  name     = var.name
  policies = ["arn:aws:iam::aws:policy/PowerUserAccess"]
  users    = var.users
}
