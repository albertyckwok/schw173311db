# Project Title

TF Module to maintain OSC ExaCC DB home. They are:

1. Make sure this job is finish on ORM before starting eccDB as the cluster will become available during precheck in the patching script but create DB will lock up the VM cluster and patching will fail. There is about 15 minute windows as it will take about 15 minutes to do the precheck.
1. This module use the last character of the compartment name as the cluster number, e.g. ExaCC5VM3 will create cluster with name ecc5c3clu
1. It also use the first VM Cluster in the same compartment to create DB homes
4. See comment in samples/xxHome.tf and edit it according if using xxHome.tf for lab.
5. Review outputs of cluster name and comparment from plan to ensure you are using the correct VM cluster.

## Getting Started

The simplest is to use Oracle Resource manager from UI, select Developer Services, Resource Manager, then stack to create and run it.

Alternatively, you can run it where ever you have Terraform for OCI setup. The following TF var need to be setup for your account, e.g. in .profile

```
export TF_VAR_tenancy_ocid="<tenancy OCID>"
export TF_VAR_user_ocid="<user OCID>"
export TF_VAR_fingerprint="<PEM key fingerprint>"
export TF_VAR_private_key_path="<path to the private key that matches the fingerprint above>"
```

### Prerequisites

Terraform with OCI plugin. All setup on apptool5.us.osc.oracle.com. You can login with your OSC Global LDAP ID.

### How to use:

```
. env-vars.sh
terraform init
terraform plan
terraform apply
```