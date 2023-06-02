# Fedora Sericea custom image

OCI image containing an 

## Variants (tags)

- `rawhide` : base image derived
-

## Signat



Build then push the image

`rpm-ostree rebase ostree-unverified-image:docker://quay.io/jbtrystram/toolbox:sericea`

Reboot. Voilà !


# TODO

[] sign the image
[] nvidia image
[] init script