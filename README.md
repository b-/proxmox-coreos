proxmox-coreos
=========

An Ansible Role for instantiating CoreOS VMs on Proxmox.

We use inventory as a list of the VMs to be created/destroyed/etc.

Requirements
------------

- controller_host:
  - python: (see [python-requirements.txt](python-requirements.txt))
    - proxmoxer
    - ansible
  - [just](https://just.systems) (brew install just)
  - [direnv](https://direnv.net) (brew install direnv)

Role Variables
--------------

Any and all Proxmox API information should be entered into the vars.

Please note that using Ignition via the recommended parameters on Proxmox requires the root _password_ to be provided. Really. Even an API key for `root@pam!ansible` with privilege separation disabled _is not sufficient_. I recommend using something like `git-crypt`, or perhaps something fancier like 1Password and its API, or some other vault system.

I'm currently providing the required root password in a file `SECRETS.env` in the format,

    # SECRETS.env
    export PROXMOX_PASSWORD="hunter2"

Dependencies
------------

<!--A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.-->

Example Playbook
----------------

<!--
Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }
-->

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
