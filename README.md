# For Fedora netinst (minimal install + common NetworkManager Submodules)

## Preparation
Download Wi-Fi drivers (https://rpmfind.net/):
```
iwlegacy-firmware
iwlwifi-dvm-firmware
iwlwifi-mvm-firmware
```
Install Fedora minimal and run init script:
```
curl -s https://raw.githubusercontent.com/nserd/awesomewm-fedora/main/init.sh | bash
```

## Run playbook
```
cd awesomewm-fedora
ansible-playbook install.yml -D
```
