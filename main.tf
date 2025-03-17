module "frontend" {
  source    = "./module/app"
  component = frontend

  env            = var.env
  instance_type = var.instance_type
  ssh_user      = var.ssh_user
  ssh_password  = var.ssh_password
  zone_id       = var.zone_id


}