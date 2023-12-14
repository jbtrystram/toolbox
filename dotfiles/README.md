# Toolbox image for managing dotfiles with chezmoi

## Setup

```
toolbox create dotfiles --image quay.io/jbtrystram/toolbox-dotfiles
toolbox enter dotfiles
```

## Usage

When unboxing a new machine: 
```
chezmoi init --apply jbtrystram
```

## TODO

- [ ] Move to regular toolbox
- [ ] helper/welcome message
- [ ] Github CI to build and push the image : [example](https://github.com/jcapiitao/toolbox/blob/main/.github/workflows/build-and-push-dotfiles.yaml)

# Build
```
podman build . -t quay.io/jbtrystram/toolbox-dotfiles
```