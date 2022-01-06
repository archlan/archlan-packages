# ArchLan Linux packages test

<p align="center">
<a href="https://archlan.github.io"><img src="https://raw.githubusercontent.com/archlan/assets/main/img/logo/128x128_logo.svg" height="128" width="128" alt="ArchLan"></a>
</p>


<p align="center">
  <img src="https://img.shields.io/badge/Released%3F-No-pink?style=flat-circle">
  <img src="https://img.shields.io/github/downloads/archlan/releases/total?label=downloads&logo=github&color=purple&style=flat-circle">
  <img src="https://img.shields.io/github/stars/archlan/iso?style=flat-circle&color=pink">
  <img src="https://img.shields.io/github/issues/archlan/iso?color=purple&style=flat-circle">
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