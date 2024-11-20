resource "oci_database_database" "test_database" {
  count = var.db_count
  database {
    admin_password = "BEstr0ng###${count.index}"
    db_name        = "p${local.clu_num}Db${count.index}"
    pdb_name       = "p${local.clu_num}Pdb${count.index}"
    character_set  = "AL32UTF8"
    ncharacter_set = "AL16UTF16"
    db_workload    = "OLTP"

    db_backup_config {
      auto_backup_enabled = false
    }
  }
  db_home_id = oci_database_db_home.prod_db_home.id

  source     = "NONE"
  lifecycle {
    ignore_changes = [database,source]
  }
  //It takes about 40 min to create 1 DB so make it simple to give an hour per DB
  timeouts {
      create = "${var.db_count}h"
      delete = "${var.db_count}h"
 }
}
