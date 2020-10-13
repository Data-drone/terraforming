# Adding CUDA to CDP Base Image

This is for testing adding in CUDA and RAPIDS install to a CDP PvC base image

Packer builds an image off and adds the drivers.

Tested on:
https://aws.amazon.com/marketplace/pp/B00O7WM7QW?qid=1602576592817&sr=0-3&ref_=srh_res_product_title

and G4 instances only as Centos is a common Cloudera deployment images and G4 is the one with the latest Nvidia compute capability that is required to best leverage new DS / ML Libs like Rapids AI

Currently is set to the 10.2 CUDA release. 11.1 is too new for most precompiled ML libraries like PyTorch and Tensorflow

## Requirements

Packer / Ansible

## Development Notes

Most Instructions on installing drivers are focused around installing on ubuntu and installing on desktop devices not servers for use in clusters.

Servers do not for example require desktop applications for user interfaces.

## Requirements in the base centos image

EPEL added:
`sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm`

Centos7 required 3.10.0-1127.19.1 kernel to work properly:
The final `yum -y update` in the script sorts this out.
Manual install would require something like: 
`sudo yum install https://centos.pkgs.org/7/centos-updates-x86_64/kernel-devel-3.10.0-1127.19.1.el7.x86_64.rpm.html`

Setting the repo like we have means that
`yum install cuda` will pick the 10.2 version.
Nvidia generally doesn't make it easy to find older versions to install from the website but google can uncover:
https://developer.nvidia.com/cuda-10.2-download-archive

Currently the ansible pre-warm does not add the extra 10.2 patch from the above website


# Debugging

Nvidia drivers can be installed but not activated.
Check
run `dmesg` to see if it is being loaded at startup (`dmesg | grep nvidia`)

Check if there is a visible nvidia card as well.
run `sudo lshw -C display` to show all displays.
If Nvidia drivers are runing properly, the `display:1` should show up with `configuration: driver=nvidia` if it is not loaded up it will show as `UNCLAIMED`

If my experience, disabling nouveau as illustrated in other guides was not required.

# Cheat Sheet

run 

```{bash}

packer build --var-file="../secrets/packer_vars.json" adding_cuda.json

```

example `packer_vars.json`

```{bash}
{
    "aws_access_key": "<>",
    "aws_secret_key": "<>",
    "owner": "<awesomeme>",
    "enddate": "<ddmmyyyy>",
    "instance": "<instance name to save as>",
    "source_ami": "<your source ami>"
}


```