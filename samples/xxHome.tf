// The creation of an oci_database_db_system requires that it be created with exactly one oci_database_db_home. Therefore the first db home will have to be a property of the db system resource and any further db homes to be added to the db system will have to be added as first class resources using "oci_database_db_home".
resource "oci_database_db_home" "xx_db_home" {
  vm_cluster_id = local.clu_id
  source       = "VM_CLUSTER_NEW"
  database {
    admin_password = "BEstr0ng###0"
    db_name        = "xxDb0"
    pdb_name       = "xxPdb0"
    character_set  = "AL32UTF8"
    ncharacter_set = "AL16UTF16"
    db_workload    = "OLTP"

    db_backup_config {
      auto_backup_enabled = false
    }
  }
  db_version   = "19.0.0.0"
//db_version   = "12.2.0.1"
//db_version   = "12.1.0.2"
  display_name = "xx-OH"
}
