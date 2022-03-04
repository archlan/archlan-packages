# ArchLan Linux packages

<p align="center">
<a href="https://archlan.github.io"><img src="https://raw.githubusercontent.com/archlan/assets/main/img/logo/128x128_logo.svg" height="128" width="128" alt="ArchLan"></a>
</p>


<p align="center">
  <img src="https://img.shields.io/badge/Latest-v22.02-a?color=2F1254&labelColor=131a1c&style=for-the-badge">
  <img src="https://img.shields.io/github/downloads/archlan/releases/total?color=2F1254&labelColor=131a1c&style=for-the-badge">
  <img src="https://img.shields.io/github/stars/archlan/iso?color=2F1254&labelColor=131a1c&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/archlan/issue-tracker?color=2F1254&labelColor=131a1c&style=for-the-badge">
</p>


<p align="center">
<a href="https://www.archlinux.org">Arch</a> based distribution. Designed for fun and minimalism.
</p>

## Use this mirror as a package source for pacman

Put this in `/etc/pacman.conf`

```bash
[archlan-packages-test]
SigLevel = Optional DatabaseOptional
Server = https://archlan.github.io/$repo/$arch
```
