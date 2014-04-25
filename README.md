# baseline-formula

Salt formula to get a VM to baseline install with dotfiles and packages.

See `pillar.example` for an example of what you want your pillar to look like.

Add `saltstack-formulas/users-formula` to `gitfs_remotes` in your master
configuration:

```
gitfs_remotes:
  - https://github.com/saltstack-formulas/users-formula.git
```

#### Installs the following packages:

* git
* python2
* screen
* vim
* zsh

#### If `dotfile_gitrepo` is not defined, will grab and drop:

[fly/dotfiles](https://github.com/fly/dotfiles)

### Cloud:

If a target isn't defined, then a Linode instance will be spun up. (WIP)
