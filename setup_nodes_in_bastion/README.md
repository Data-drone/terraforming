# Terraform Code to setup nodes in the bastion

We need to setup a new output and inventory that routes through the bastion host.

Then it will all be good

# Notes

This isn't a true bastion setup where the cluster nodes are in a private only subet.

I just don't want to attach elastic ips to all nodes for ssh and ansible inventory management. Hence a bastion host to with elastic ip to route traffic to everything else