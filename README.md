# Custom toolboxes

## Sericea

[![Sericea: Build and push](https://github.com/jbtrystram/toolbox/actions/workflows/sericea.yaml/badge.svg?branch=main)](https://github.com/jbtrystram/toolbox/actions/workflows/sericea.yaml)

A derivative build of Fedora Sericea with a few custom changes. 
See [README](./sericea/README.md).

## Dev-base
[![Docker Repository on Quay](https://quay.io/repository/jbtrystram/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/jbtrystram/toolbox)

[![dev-base-toolbox: Build and push](https://github.com/jbtrystram/toolbox/actions/workflows/dev-base.yaml/badge.svg?branch=main)](https://github.com/jbtrystram/toolbox/actions/workflows/dev-base.yaml)


A base image to do development with the tools I am used to. 
```shell
toolbox create --image quay.io/jbtrystram/toolbox <name>
```
Or build it manually
```shell
podman build -t dev-base:latest -f dev-base/Containerfile
podman run --privileged --userns=keep-id dev-base:latest
```

