# Custom toolboxes

## Kinoite

[![Sericea: Build and push](https://github.com/jbtrystram/toolbox/actions/workflows/kinoite.yaml/badge.svg?branch=main)](https://github.com/jbtrystram/toolbox/actions/workflows/kinoite.yaml)

A derivative build of Fedora Kinoite from ublue-os with a few custom changes. Produces two builds: nvidia and main.

## Sericea - Arhived

[![Sericea: Build and push](https://github.com/jbtrystram/toolbox/actions/workflows/sericea.yaml/badge.svg?branch=main)](https://github.com/jbtrystram/toolbox/actions/workflows/sericea.yaml)

This is not built anymore, as I no longer use it. I keep it there in case I want to switch back in the future.

A derivative build of Fedora Sericea with a few custom changes. 
See [README](./sericea/README.md).

## Toolbox
[![Docker Repository on Quay](https://quay.io/repository/jbtrystram/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/jbtrystram/toolbox)

[![dev-base-toolbox: Build and push](https://github.com/jbtrystram/toolbox/actions/workflows/toolbox.yaml/badge.svg?branch=main)](https://github.com/jbtrystram/toolbox/actions/workflows/toolbox.yaml)


A base image to do development with the tools I am used to. 
```shell
toolbox create --image quay.io/jbtrystram/toolbox
```
Or build it manually
```shell
podman build -t toolbox:latest -f toolbox/Containerfile
podman run --privileged --userns=keep-id toolbox:latest
```

