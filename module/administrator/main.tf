module "administrator_user" {
  source = "../.."

  name = var.name
  userrole = "administrator"
}
