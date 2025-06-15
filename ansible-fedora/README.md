# Ansible playbooks and config for the homelab

## What are these playbooks for?

These playbooks are currently meant for Raspberry Pis with Fedora. Please look into using `arm-image-installer` from RedHat/Fedora.

After that, create `hosts` file to list all ur raspberry pi hostnames and their IP addresses etc. Run this and you should have a cluster ready to run Kubernetes:

```
ansible-playbook setup.yaml kubernmetes.yaml
```

