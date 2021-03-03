module "usergroup" {
  source = "../.."

  name     = var.name
  policies = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"]
  users    = var.users
}
