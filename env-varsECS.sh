#!/bin/bash
echo Albert IDCS ID and Fingerprint
export TF_VAR_fingerprint=e6:3a:ec:78:4e:d4:78:04:51:6b:6b:2b:cd:bd:ea:c2
export TF_VAR_user_ocid=ocid1.user.oc1..aaaaaaaandrzlyw65dlbicctiw5i5aowjig25plx7ilnld43sjjm5ulis37q
echo Tenant oscemea006
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaawa2ajonuvo2j33mzcgofcjages5vwxc2wzuqy4lcaplnktabrxdq"
echo London region
export TF_VAR_region="uk-london-1"
echo Setting comparment to exacs1vm1
export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaamshc4oioudmnkehconwbmkz3xzz33sqgayikdpacirhrvhawzmeq"
#echo Setting comparment to exacs1adb2 to test no ECC and ECS cluster in the compartment
#export TF_VAR_compartment_ocid="ocid1.compartment.oc1..aaaaaaaanydpfvtpzm6ks6a5agaxmdw5hraakfad5zai4avczhdzhknlliqa"
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
