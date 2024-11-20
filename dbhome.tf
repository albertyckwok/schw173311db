resource "oci_database_db_home" "prod_db_home" {
  source       = "VM_CLUSTER_NEW"
  vm_cluster_id = local.clu_id
  db_version   = "19.${var.curBP - 2}.0.0"
  lifecycle {
    ignore_changes = [db_version,source,database]
  }
  display_name = "Prod-OH"
}

resource "oci_database_db_home" "patched_db_home" {
  vm_cluster_id = local.clu_id
  source       = "VM_CLUSTER_NEW"
  db_version   = "19.${var.curBP - 1}.0.0"
  lifecycle {
    ignore_changes = [db_version,source,database]
  }
  display_name = "Patched-OH"
}

resource "oci_database_db_home" "dg_db_home" {
  vm_cluster_id = local.clu_id
  source       = "VM_CLUSTER_NEW"
  database {
    admin_password = "BEstr0ng###0"
    db_name        = "g${local.clu_num}Db0"
    pdb_name       = "g${local.clu_num}Pdb0"
    character_set  = "AL32UTF8"
    ncharacter_set = "AL16UTF16"
    db_workload    = "OLTP"

    db_backup_config {
      auto_backup_enabled = false
    }
  }
  db_version   = "19.${var.curBP}.0.0"
  lifecycle {
    ignore_changes = [db_version,source,database]
  }
  display_name = "DG-OH"
}
