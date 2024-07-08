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
<p align="center"><img src="https://github.com/NOLEPERS2/Arch-Gnome-Termux/blob/e932738370d654208ac371d92e8f9f6a6fea4685/Screenshot_20240708-110912.png"</p>

```
pacman -S gnome-shell gnome-terminal gnome-shell-extensions gnome-tweaks wget
```
</details>

---

## Starting

* Termux-X11

in arch run this command :
```
wget https://github.com/NOLEPERS2/Arch-Gnome-Termux/blob/main/gnome_arch.sh ; chmod +x gnome_arch.sh ; ./gnome_arch.sh
```
