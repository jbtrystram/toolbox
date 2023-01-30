# Custom toolboxes

## Dev-base
[![Docker Repository on Quay](https://quay.io/repository/jbtrystram/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/jbtrystram/toolbox)

A base image to do development with the tools I am used to. 
```shell
toolbox create --image quay.io/jbtrystram/toolbox <name>
```
Or build it manually
```shell
podman build -t dev-base:latest -f dev-base/Containerfile
podman run --privileged --userns=keep-id dev-base:latest
```

