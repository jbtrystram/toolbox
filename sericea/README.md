# Fedora Sericea custom image

OCI image containing a bootable rpm-ostree, derived from [fedora-sericea](https://fedoraproject.org/sericea/).
This is still WIP.


## Variants (tags)

- `rawhide` : base image with a few packages

## Build instructions

```
podman build . -t quay.io/jbtrystram/fedora-sericea:rawhide
podman push quay.io/jbtrystram/fedora-sericea:rawhide
```

## Usage 

On a rpm-ostree based system : `rpm-ostree rebase ostree-unverified-image:docker://quay.io/jbtrystram/toolbox:sericea`

Reboot. Voilà !


# TODO

- [ ] sign the image
- [ ] nvidia tweaks 
- [ ] init script
- [ ] Build the image with GH actions
