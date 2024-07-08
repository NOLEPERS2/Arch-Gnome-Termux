# Arch-Gnome-Termux
Install Gnome In Arch Linux In Termux

# installation

Update Termux And Upgrade First
> pkg update ; pkg upgrade

<details></br>
<summary><b><code>Install Arch In Termux</code></b></summary>

* Arch Linux ARM64
```
pkg in proot-distro ; pd install archlinux ; pd login archlinux
```
___

basic command in arch
> pacman -Sy : Update list package.</br>
> pacman -Syu : Upgrade package.</br>
> pacman -S (pkg) : Install package.</br>
> pacman -R (pkg) : Delete package.</br>
> pacman -h : Help all commands.
---

## Desktop Environment

in arch run this command first:
> pacman -Sy ; pacman -Syu

<details></br>
<summary><b><code>Install Gnome Desktop</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Ubuntu/main/Images/xfce.jpg"</p>

```
pacman -S gnome-shell gnome-terminal gnome-shell-extensions gnome-tweaks
```
</details>

---
