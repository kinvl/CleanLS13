<br>

<p align="center">
  <img src="/Assets/banner-light-mode.pgng#gh-light-mode-only"/>
  <img src="/Assets/banner-dark-mode.png#gh-dark-mode-only"/>
</p>

<p align="center">
    <strong><a href="#features">Features</a></strong> |
    <strong><a href="#screenshots">Screenshots</a></strong> |
    <strong><a href="#installation">Installation</a></strong> |
    <strong><a href="#requirements">Requirements</a></strong>
</p>

## Features
CleanLS13 is a simple tweak to make your lockscreen look super clean! 🧹
- hide padlock
- change date font size
- hide "Swipe up to unlock"
- set custom app for either left or right quick action
- hide quick actions

## Screenshots
|                   Lockscreen                  |                    Preferences                  |
:----------------------------------------------:|:------------------------------------------------:
<img src="/Assets/lockscreen.png " width="240"> | <img src="/Assets/preferences.png " width="240">

## Installation
### Prebuilt .deb
Download the desired version of the .deb file from the [Releases](https://github.com/kinvl/CleanLS13/releases) tab and install it using a file manager e.g. Filza.

### Theos
1. Download and install [Theos](https://theos.dev/docs/).
2. Download the desired version of the source code from the [Releases](https://github.com/kinvl/CleanLS13/releases) tab.
3. Unzip downloaded archive and `cd` into the directory.
4. Install.
    1. Over SSH:
        1. Open _Makefile_ and add `THEOS_DEVICE_IP` at the top and set its value to your iPhone's IP in your local network.
        2. Run `make package install FINALPACKAGE=1`.
        3. Type in your SSH password when prompted. Default is `alpine`.
    2. Manually:
        1. Run `make package FINALPACKAGE=1`.
        2. Open `.theos/packages` directory and transfer the .deb file that you've just built to your iPhone.
        3. Install it using a file manager e.g. Filza.

## Requirements
Supports iOS 13.0 to 14.5. <br>
Depends on [Cephei Tweak Support](https://chariz.com/get/cephei). <br>

<sup>Tested on iPhone X, iOS 13.3, unc0ver 8.0.2.</sup>
