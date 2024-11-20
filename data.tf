locals { 
    eccName = length(data.oci_database_vm_clusters.test_vm_clusters.vm_clusters) > 0 ?  data.oci_database_vm_clusters.test_vm_clusters.vm_clusters[var.clu_idx].display_name : "N/A-1"
    ecsName = length(data.oci_database_cloud_vm_clusters.test_vm_clusters.cloud_vm_clusters) > 0 ?  data.oci_database_cloud_vm_clusters.test_vm_clusters.cloud_vm_clusters[var.clu_idx].display_name : "N/A-1"
    cluName = local.eccName == "N/A-1" ? local.ecsName : local.eccName
    clu_num = var.clu_num == 0 ? substr(local.cluName, -1, 1) : var.clu_num
    eccCluId = length(data.oci_database_vm_clusters.test_vm_clusters.vm_clusters) > 0 ?  data.oci_database_vm_clusters.test_vm_clusters.vm_clusters[var.clu_idx].id : "N/A"
    ecsCluId = length(data.oci_database_cloud_vm_clusters.test_vm_clusters.cloud_vm_clusters) > 0 ?  data.oci_database_cloud_vm_clusters.test_vm_clusters.cloud_vm_clusters[var.clu_idx].id : "N/A"
    myCluId = local.eccCluId == "N/A" ? local.ecsCluId : local.eccCluId
    clu_id = var.clu_id == "N/A" ? local.myCluId : var.clu_id
}
#Query Compartment name to get cluster number
data "oci_identity_compartment" "cluster_compartment" {
    id = var.compartment_ocid
}
data "oci_database_vm_clusters" "test_vm_clusters" {
    compartment_id = var.compartment_ocid
}
output "compartment" {
  value=data.oci_identity_compartment.cluster_compartment.name
}
output "ClusterExaCC" {
  value= data.oci_database_vm_clusters.test_vm_clusters.vm_clusters[*].display_name
}
data "oci_database_cloud_vm_clusters" "test_vm_clusters" {
    compartment_id = var.compartment_ocid
}
output "ClusterExaCS" {
  value= data.oci_database_cloud_vm_clusters.test_vm_clusters.cloud_vm_clusters[*].display_name
}
output "ClusterNumber" {
  value= local.clu_num
}
output "ClusterName" {
  value= local.cluName
}
output "ClusterID" {
  value= local.clu_id
}

