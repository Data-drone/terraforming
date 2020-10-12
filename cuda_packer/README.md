# Adding CUDA to CDP Base Image

This is for testing adding in CUDA and RAPIDS install to a CDP PvC base image

## Requirements

Packer

## Notes

Maybe we don't need this?
Can just add the role and stuff?

## Testing bits
http://developer.download.nvidia.com/compute/cuda/repos/centos7/x86_64/cuda-centos7.repo

-- need development tools

-- we shouldn't need this
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

-- this is broken
sudo yum-config-manager --add-repo http://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-rhel7.repo

-- doesn't work
sudo yum install -y nvidia-driver-latest-dkms

sudo yum install https://centos.pkgs.org/7/centos-updates-x86_64/kernel-devel-3.10.0-1127.19.1.el7.x86_64.rpm.html

sudo yum update
 ??? kernel ???

sudo yum install cuda-10.2.89-1

# Commands

```{bash}



```