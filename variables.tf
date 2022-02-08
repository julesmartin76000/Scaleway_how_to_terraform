#General
variable "zone" {
  type = string
}

variable "region" {
  type = string
}

variable "env" {
  type = string
}


#Kapsule
variable "kapsule_cluster_version" {
  type = string
}

variable "kapsule_pool_size" {
  type = number
}

variable "kapsule_pool_min_size" {
  type = number
}

variable "kapsule_pool_max_size" {
  type = number
}

variable "kapsule_pool_node_type" {
  type = string
}


#Database
variable "rdb_is_ha_cluster" {
  type = bool
}

variable "rdb_disable_backup" {
  type = bool
}

variable "rdb_instance_node_type" {
  type = string
}

variable "rdb_instance_engine" {
  type = string
}

variable "rdb_instance_volume_size_in_gb" {
  type = string
}

variable "rdb_user_root_password" {
  type = string
}

variable "rdb_user_scaleway_db_password" {
  type = string
}

variable "rdb_instance_volume_type" {
  type = string
}

