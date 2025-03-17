module "frontend" {
  source    = "./modules/app"
  component = "frontend"

  env            = var.env
  instance_type = var.instance_type
  ssh_user      = var.ssh_user
  ssh_password  = var.ssh_password
  zone_id       = var.zone_id


}
module "backend" {
  source    = "./modules/app"
  component = "backend"

  env            = var.env
  instance_type = var.instance_type
  ssh_user      = var.ssh_user
  ssh_password  = var.ssh_password
  zone_id       = var.zone_id


}
module "mysql" {
  source    = "./modules/app"
  component = "mysql"

  env            = var.env
  instance_type = var.instance_type
  ssh_user      = var.ssh_user
  ssh_password  = var.ssh_password
  zone_id       = var.zone_id


}