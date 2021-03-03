module "usergroup" {
  source = "../.."

  name     = var.name
  policies = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  users    = var.users
}
