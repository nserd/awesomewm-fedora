# Fedora Awesome WM Setup

## Preparation
Download Wi-Fi drivers (https://rpmfind.net/):
```
iwlegacy-firmware
iwlwifi-dvm-firmware
iwlwifi-mvm-firmware
```
Install Fedora (netinst: minimal + common NetworkManager Submodules), then install the drivers via:
```
rpm -i <package>
```
Run init script:
```
curl -s https://raw.githubusercontent.com/nserd/awesomewm-fedora/main/init.sh | bash
```
## Installation
```
cd awesomewm-fedora
ansible-playbook install.yml -D
```
