# baseline-formula

Salt formula to get a VM to baseline install with dotfiles and base packages.

See `pillar.example` for an example of what you want your pillar to look like.

Add `saltstack-formulas/users-formula` to `gitfs_remotes` in your master
configuration:

```
gitfs_remotes:
  - https://github.com/saltstack-formulas/users-formula.git
```
