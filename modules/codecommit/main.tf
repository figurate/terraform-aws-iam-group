module "usergroup" {
  source = "../.."

  name     = var.name
  policies = ["arn:aws:iam::aws:policy/AWSCodeCommitPowerUser"]
  users    = var.users
}
