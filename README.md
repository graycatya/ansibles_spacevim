Ansible Role: SpaceVim
=========

Installs and configures SpaceVim on RHEL/CentOS(7,8) or Debian/Ubuntu server.

Requirements
------------

No special requirements; note that this role requires root access, so either run it in a playbook with a global become: yes, or invoke the role in your playbook like:

```
- hosts: server
  become: yes
  become_method: sudo
```

Role Variables
--------------

Available variables are listed below, along with default values (see defaults/main.yml)(各系统需要下载软件包):

#### Debian & Ubuntu
```
apt_python_version: "3.6"
apt_lua_version: "5.3"

apt_packages:
 - wget 
 - curl 
 - cmake 
 - fontconfig
 - git 
 - lua{{ apt_lua_version }}* 
 - ruby 
 - libncurses5-dev
 - libgnome2-dev
 - libgnomeui-dev
 - libgtk2.0-dev
 - libatk1.0-dev
 - libbonoboui2-dev
 - libcairo2-dev
 - libx11-dev
 - libxpm-dev
 - libxt-dev
 - ruby-dev
 - ttf-mscorefonts-installer
 - ctags 
 - clang 
 - nodejs 
 - net-tools
 - python3-pip
 - python-pip
 - python{{ apt_python_version }}
 - python{{ apt_python_version }}-dev
 - python{{ apt_python_version }}-doc
 - python 
 - python-dev
 - python-doc
```

#### CentOS7 & RedHat

```
yum_packages:
 - gcc 
 - gcc-c++
 - libXt*
 - mkfontscale
 - fontconfig
 - ncurses-devel
 - git 
 - make 
 - cmake 
 - centos-release-scl
 - ruby 
 - ruby-devel 
 - lua 
 - lua-devel
 - luajit 
 - luajit-devel 
 - ctags 
 - python 
 - python-devel 
 - python3 
 - python3-devel 
 - tcl-devel 
 - perl 
 - perl-devel 
 - perl-ExtUtils-ParseXS
 - perl-ExtUtils-XSpp 
 - perl-ExtUtils-CBuilder
 - perl-ExtUtils-Embed
```

#### CentOS8 & RedHat

```
dnf_packages:
 - gcc 
 - gcc-c++
 - libXt*
 - mkfontscale
 - fontconfig
 - ncurses-devel
 - git 
 - make 
 - cmake 
 - ruby 
 - ruby-devel 
 - lua 
 - lua-libs
 - ctags 
 - python2
 - python2-devel 
 - python3 
 - python36-devel 
 - tcl-devel 
 - perl 
 - perl-devel 
 - perl-ExtUtils-ParseXS
 - perl-ExtUtils-CBuilder
 - perl-ExtUtils-Embed
```

#### python需要的模块

```
pip3_packages:
- jedi 
- yapf 
- isort 
- flake8 
- neovim 
- pynvim
```

Dependencies
------------

None.

Example Playbook
----------------

```
- hosts: server
  become: yes
  become_method: sudo

```

License
-------

None.

Author Information
------------------

This role was created in 2019 by [graycatya](https://github.com/graycatya).
