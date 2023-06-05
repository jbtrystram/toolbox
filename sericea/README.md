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

###  Bonus: sign the image

Using sigstore`s [cosign](https://github.com/sigstore/cosign)
```
./cosign sign quay.io/jbtrystram/fedora-sericea:latest
```
If you don't want to publish the signature to sigstore's public log (rekor)
you can generate a key pair : 
```
cosign generate-key-pair
cosign sign --key cosign.key quay.io/jbtrystram/fedora-sericea@sha256:<image-hash>
```

Then publish the `cosign.pub` public key somewhere you can later access to verify the image:
```
./cosign verify --key cosign.pub quay.io/jbtrystram/fedora-sericea@sha256:<image-hash>
```

## Usage 

On a rpm-ostree based system : `rpm-ostree rebase ostree-image-signed:docker://quay.io/jbtrystram/fedora-sericea:39`

Reboot. Voilà !


# TODO

- [x] sign the image
- [ ] Build the image with GH actions, signing the image using fulco keyless process
- [ ] nvidia tweaks 
- [ ] init script
- [ ] Build the image with GH actions, signing the image using fulco keyless process
