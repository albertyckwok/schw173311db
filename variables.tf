variable "compartment_ocid" {}
variable "clu_num" { default=0 }
variable "clu_id" { default="N/A" }
variable "clu_idx" { default=0 }
variable "curBP" { default=24 }
variable "db_count" {
  description = "Number of Database to create"
  type = number
  default = 0
}
