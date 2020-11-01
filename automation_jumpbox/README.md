# A jumpbox provides one ingress point into an environment

In this case we are just using it for convenience so that we don't need to manually update ip addresses in an inventory or buy static public ips from cloud providers

# Things we need

- Ansible
  - Python 2.7 version

- Ansible galaxy stuff for the playbooks
  - freeipa
  - postgres - need check which one

- Packer is optional

- Terraform

- git

# notes

it is probably fine if we packer without the jumpbox
though with the hashicorp repo we could do everything through the jumpbox??