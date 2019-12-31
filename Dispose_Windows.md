Dispose Winrm
=======

[返回](README.md)

Requirements
=========

1. Linux管理服务器需要安装的插件

```
pip
pywinrm
```

2. window客户机要求

```
powershell版本4.0以上
```

#### 配置步骤
```
#查看powershell版本
get-host 

#查看powershell执行策略
get-executionpolicy 

#更改powershell执行策略为remotesigned
set-executionpolicy remotesigned 

#配置winrm service并启动服务
winrm quickconfig

# 查看winrm service启动监听状态
winrm enumerate winrm/config/listener

#修改winrm配置,启用远程连接认证
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
```

#### 防火墙配置

* 打开防火墙高级配置,选择入站规则,在点击新建规则

* 填写信任端口5985

* 填写新建规则名称(建议为Ansible)

#### 在管理机上添加windows客户端连接信息

```
#编辑/etc/ansible/hosts,添加客户端主机信息(ansible服务端的配置)

[windows]
192.168.0.*** ansible_ssh_user="Administrator" ansible_ssh_pass="123456" ansible_ssh_port=5985 ansible_connection="winrm" ansible_winrm_server_cert_validation=ignore
```