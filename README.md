# celtic-magic-button

A simple button for the Budgie panel to shut down your computer. The icon used is a [Celtic knot](https://en.wikipedia.org/wiki/Celtic_knot), a nod to the official answer to the question, [How does Solus shut down so fast?](https://www.reddit.com/r/SolusProject/comments/6uup39/why_does_solus_shut_down_so_quickly/dlvkopm/)

## Installation

Clone this repository, or download a release archive.

```
meson build --prefix=/usr
cd build
ninja
sudo ninja install
```

#### Build Dependencies

* `budgie-desktop-devel`
* `vala`

## One-click shut down

By default, pressing the button will yield a confirmation dialog. To bypass this dialog, issue the following command:

```
dconf write /org/gnome/gnome-session/logout-prompt true
```

Use this at your own risk! With this setting, pressing the button will result in your machine immediately shutting down.

