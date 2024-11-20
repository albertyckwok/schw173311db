#!/bin/bash
echo Albert IDCS ID and Fingerprint
export TF_VAR_fingerprint=e6:3a:ec:78:4e:d4:78:04:51:6b:6b:2b:cd:bd:ea:c2
export TF_VAR_user_ocid=ocid1.user.oc1..aaaaaaaarazpnu4r7wommgyr436bbbk6cr4blvpsluddphoqbaihf3zt55ia
echo Tenant oscnas001
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaalmxrgmsqoou26rdybgthdwtwdwhn7km5oq3u25f6bdpoxihqef6q"
export TF_VAR_region="us-ashburn-1"
echo Setting comparment to ExaCC3VM4
export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaaclvjsycxhznb7tlhjwbi5iveqp2hsxmqierfwmibivlga45f5yfa"
#echo Setting comparment to ExaCC9VM3
#export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaacdlmbvvxvbuej3eyzlhfgl6f3nyjfag7eey3j4o4vjgvf5yvsrhq"
#echo Setting comparment to ExaCC9VM5
#export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaawfbipx26mtutfl7mslhum7nipe3enxghxx3maixvadqprknym6ga"
#echo Setting comparment to ExaCC9VM8
#export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaahkb6fzdwqr6gsgkxr3rjfmkwt5deobxxihbhpxdeij7hwasqvuqq"
echo Make sure to reset the following that match the tenancy
echo export TF_VAR_user_ocid=
echo 'set |grep TF_VAR'
### Authentication details that is user specific so it should be in .profile
#export TF_VAR_tenancy_ocid="<tenancy OCID>"
#export TF_VAR_user_ocid="<user OCID>"
#export TF_VAR_fingerprint="<PEM key fingerprint>"
#export TF_VAR_private_key_path="<path to the private key that matches the fingerprint above>"
