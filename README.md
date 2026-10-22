# postgresl - kubernetes - cluster

## setup

- add ansible_host_key_checking in ~/.bashrc file

```sh
export ANSIBLE_HOST_KEY_CHECKING=false
```

```sh
vagrant init
```

- start vagrant with cluster

```sh
vagrant up
```

## ansible

- clean old docker version

```sh
ansible-playbook ./ansible_hosts_vagrant/site.yml -i ./ansible_hosts_vagrant/hosts_inventory -t docker -e uninstall=true
```

- install docker

```sh
ansible-playbook ./ansible_hosts_vagrant/site.yml -i ./ansible_hosts_vagrant/hosts_inventory -t docker
```

- install kubernetes

## reference links

- check out [how to install python on ubuntu linux](https://computingforgeeks.com/how-to-install-python-on-ubuntu-linux/)
- check out [change python version ubuntu](https://www.dropvps.com/blog/change-python-version-ubuntu-24-04)
