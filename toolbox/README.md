My base toolbox image, published to quay.io/jbtrystram/toolbox
 
Thanks travier for the [host-runner trick](https://github.com/travier/quay-containerfiles/blob/main/toolbox/host-runner) 

## Certificates from the host

Sometimes you need to use the certs from the hosts from inside the toolbox. Internal VPN stuff..
A quick hack: 
```
sudo rm -rf /etc/pki/ca-trust
sudo ln -s  /run/host/etc/pki/ca-trust /etc/pki/ca-trust
```
