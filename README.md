# For Fedora Server netinst (minimal install + common NetworkManager Submodules)

Preparation:
```
sudo dnf install -y git && git clone https://github.com/nserd/awesomewm-fedora
p="get-pip.py" && curl https://bootstrap.pypa.io/$p -o $p && python $p && rm $p
pip install ansible
cd awesomewm-fedora
```
Run playbook:
```
ansible-playbook install.yml -D --ask-become-pass
```
