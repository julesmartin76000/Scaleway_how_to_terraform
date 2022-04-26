module "instance" {
  source = "./module/instance"

  #name  = var.domain
}

module "database" {
  source = "./module/database"

  #name  = var.domain
  rdb_instance_node_type         = "db-gp-xs"
  rdb_instance_engine            = "PostgreSQL-13"
  rdb_is_ha_cluster              = true
  rdb_disable_backup             = false
  rdb_instance_volume_type       = "bssd"
  rdb_instance_volume_size_in_gb = "50"
  instance_ip_addr               = module.instance.instance_ip_addr
}
