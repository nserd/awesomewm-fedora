# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d {{ bashrc_dir }} ]; then
	for rc in {{ bashrc_dir }}/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

function git-branch {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' | tr -d '() ' | sed 's#^# #g'
}

# Custom env
export PS1="\[\e[1;94m\]\u\[\e[0m\]\[\e[37m\][\[\e[0m\]\w\[\e[33m\]\$(git-branch)\[\e[37m\]]\[\e[0m\]> "
export PATH="$PATH:/home/{{ user }}/.local/myscripts/bin"
export KUBECONFIG="/home/{{ user }}/.kube/kind-config"