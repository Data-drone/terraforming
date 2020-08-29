# Currently exploring how to do FreeIPA Properly

## Test docker command


```{bash}
# to get into command line properly
# in docker sysctl 
docker run -ti --hostname ipa.brian.test \
--sysctl net.ipv6.conf.lo.disable_ipv6=0 \
--privileged \
-v /sys/fs/cgroup:/sys/fs/cgroup
--entrypoint  "/bin/bash" centos:centos7 \

# need privileged and the -v for systemd 

yum install ipa-server ipa-server-dns -y

ipa-server-install

```

Directory Manager: Password1

IPA Admin: Password1



Need to add with AWS? 
can't in docker need to set flags on docker run

net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1

to `/etc/sysctl.conf` for now

then run `sysctl -p`