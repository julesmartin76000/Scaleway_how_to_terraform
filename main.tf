module "instance" {
  source = "./module/instance"
}

/*
module "database" {
  source = "./module/database"

  #name  = var.domain
  rdb_instance_node_type         = "db-gp-xs"
  rdb_instance_engine            = "PostgreSQL-13"
  rdb_is_ha_cluster              = true
  rdb_disable_backup             = false
  rdb_instance_volume_type       = "bssd"
  rdb_instance_volume_size_in_gb = "50"
  rdb_user_root_password         = "testjuleS3&"
  rdb_user_scaleway_db_password  = "testjuleS3&"
  instance_ip_addr               = module.instance.instance_ip_addr
}
*/

module "kapsule" {
  source                  = "./module/kapsule"
  kapsule_cluster_version = "1.22"
  kapsule_pool_size       = 2
  kapsule_pool_min_size   = 2
  kapsule_pool_max_size   = 4
  kapsule_pool_node_type  = "DEV1-M"
  cni                     = "calico"
  zone                    = var.zone
  region                  = var.region
  env                     = var.env
}
