# celtic-magic-button

A simple button for the Budgie panel to shut down your computer. The icon used is a [Celtic knot](https://en.wikipedia.org/wiki/Celtic_knot), a nod to the answer to the question, [How does Solus shut down so fast?](https://www.reddit.com/r/SolusProject/comments/6uup39/why_does_solus_shut_down_so_quickly/dlvkopm/)

This is a one-click shutdown button. Use at your own risk!

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

