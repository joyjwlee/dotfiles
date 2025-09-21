# git + gnu stow

## Adding Dotfiles/Configs
> to this repo

1. Create a package

```
mkdir {package}
```

2. Move configs mirroring path from home of the machine to package directory

```
mv ~/{configs} {package}
```

3. Symlink the configs and verify symlinks point from the original config location to this repo

```
stow {package}
```

## Applying Dotfiles/Configs
> on a new machine

1. Clone the repo

```
git clone git@github.com:joyjwlee/dotfiles.git
```

2. Add the configs

```
stow {package}
```
