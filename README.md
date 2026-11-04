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

- check docker installation

```sh
dpkg -l | grep -i docker
```

- clean old docker version

```sh
ansible-playbook ./ansible_hosts_vagrant/site.yml -i ./ansible_hosts_vagrant/hosts_inventory -t docker -e uninstall=true
```

- install docker

```sh
ansible-playbook ./ansible_hosts_vagrant/site.yml -i ./ansible_hosts_vagrant/hosts_inventory -t docker
```

## kubernetes

- check packages

```sh
dpkg -l | grep -i kube*
```

- install kubernetes

```sh
ansible-playbook ./ansible_hosts_vagrant/site.yml -i ./ansible_hosts_vagrant/hosts_inventory -t kubernetes
```

- uninstall kubernetes

```sh
ansible-playbook ./ansible_hosts_vagrant/site.yml -i ./ansible_hosts_vagrant/hosts_inventory -t kubernetes -e uninstall=true
```

```sh
dpkg -l | grep -i kube
```

## reference links
 
- check out [how to install python on ubuntu linux](https://computingforgeeks.com/how-to-install-python-on-ubuntu-linux/)
- check out [change python version ubuntu](https://www.dropvps.com/blog/change-python-version-ubuntu-24-04)
- check out [how to install docker on ubuntu](https://www.hostinger.com/tutorials/how-to-install-docker-on-ubuntu/?utm_source=google&utm_medium=cpc&utm_id=20990199541&utm_campaign=Generic-Tutorials-DSA-t1|NT:Se|Lang:EN|LO:Other-LATAM-t1&utm_term=&utm_content=749654645740&gad_source=1&gad_campaignid=20990199541&gbraid=0AAAAADMy-hZpvZDSH_XB3gEdyyXfuhzxN&gclid=CjwKCAjwxeHWBhBPEiwAiqtQ-TiZLYDgDm0KuZ0AunYTIXAn-3_XYrGxoS88e3p61TDFlK0Mm6oCdxoCq0UQAvD_BwE)
- check out [docker documentation official - installation](https://docs.docker.com/engine/install/ubuntu/#installation-methods)
