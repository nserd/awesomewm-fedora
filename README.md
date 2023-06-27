Preparation:
```
sudo dnf install -y git && git clone https://github.com/nserd/awesomewm-fedora
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py && rm get-pip.py
pip install ansible
cd awesomewm-fedora
```
Run playbook:
```
ansible-playbook install.sh -D --ask-become-pass
```
