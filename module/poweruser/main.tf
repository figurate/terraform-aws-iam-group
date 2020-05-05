module "poweruser_user" {
  source = "../.."

  name = var.name
  userrole = "poweruser"
}
