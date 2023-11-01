# For Fedora Server netinst (Basic install without options)

Preparation:
```
sudo dnf install -y git && git clone https://github.com/nserd/awesomewm-fedora
p="get-pip.py" && curl https://bootstrap.pypa.io/$p -o $p && python $p && rm $p
pip install ansible
cd awesomewm-fedora
```
>Or run init script:
>```
>curl -s https://raw.githubusercontent.com/nserd/awesomewm-fedora/main/init.sh | bash
>```


Run playbook:
```
ansible-playbook install.yml -D
```
