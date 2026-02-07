```
### Initializating good
### Initializating bad

### Trying good

+ mise i -f ansible
mise ansible@13.3.0               [1/4] uninstall
mise ansible@13.3.0               [1/4] remove ~/.local/share/mise/installs/ansible/13.3.0
mise ansible@13.3.0               [1/4] remove ~/.cache/mise/ansible/13.3.0
mise ansible@13.3.0               [2/4] install
mise ansible@13.3.0               [2/4] pipx install ansible==13.3.0
creating virtual environment...
creating shared libraries...
upgrading shared libraries...
installing ansible from spec 'ansible==13.3.0'...
done! ✨ 🌟 ✨
mise ansible@13.3.0               [2/4]   installed package ansible 13.3.0, installed using Python 3.14.3
mise ansible@13.3.0               [2/4]   These apps are now globally available
mise ansible@13.3.0               [2/4]     - ansible
mise ansible@13.3.0               [2/4]     - ansible-community
mise ansible@13.3.0               [2/4]     - ansible-config
mise ansible@13.3.0               [2/4]     - ansible-console
mise ansible@13.3.0               [2/4]     - ansible-doc
mise ansible@13.3.0               [2/4]     - ansible-galaxy
mise ansible@13.3.0               [2/4]     - ansible-inventory
mise ansible@13.3.0               [2/4]     - ansible-playbook
mise ansible@13.3.0               [2/4]     - ansible-pull
mise ansible@13.3.0               [2/4]     - ansible-test
mise ansible@13.3.0               [2/4]     - ansible-vault
mise ansible@13.3.0             ✓ installed

+ mise x -- type ansible
ansible is /home/aron/.local/share/mise/installs/ansible/13.3.0/bin/ansible

### Trying bad

+ mise i -f ansible
mise ansible@13.3.0               [1/4] uninstall
mise ansible@13.3.0               [1/4] remove ~/.local/share/mise/installs/ansible/13.3.0
mise ansible@13.3.0               [1/4] remove ~/.cache/mise/ansible/13.3.0
mise ansible@13.3.0               [2/4] install
mise ansible@13.3.0               [2/4] uv tool install ansible==13.3.0
Resolved 10 packages in 3ms
Installed 10 packages in 341ms
 + ansible==13.3.0
 + ansible-core==2.20.2
 + cffi==2.0.0
 + cryptography==46.0.4
 + jinja2==3.1.6
 + markupsafe==3.0.3
 + packaging==26.0
 + pycparser==3.0
 + pyyaml==6.0.3
 + resolvelib==1.2.1
Installed 1 executable: ansible-community
mise ansible@13.3.0             ✓ installed

+ mise x -- type ansible
/usr/bin/type: line 2: type: ansible: not found
```
