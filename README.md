# rke2-terraform
A repository that creates a RKE2 kubernetes cluster using Terraform

## SSH access to nodes
In the file `terraform.tfvars` you can set the password. The default is "softica".

To create a new password, run the following command and give it the password when prompted:
```
mkpasswd --method=SHA-512 --rounds=4096
```
or
```
echo "your-password" | mkpasswd --method=SHA-512 --rounds=4096 -
```

The password is needed by terraform, so we keep a version of it in plain text as well. So remember to change the variable `kubernetes_node_ssh_password_plain` as well.

## Getting your kube config
SSH into the first master node and run the following command
```
cat /etc/rancher/rke2/rke2.yaml
```
or get it to a local file like this with the ssh username and ssh password you have chosen. 
> The command will overwrite your current config file !
```
ssh kubernetes@10.18.3.10 cat /etc/rancher/rke2/rke2.yaml > ~/.kube/config
```
In the config file, it refers to the conrolplane at `127.0.0.1` which doesnt work for us. So edit the file and change `127.0.0.1` with the ip of the control plane node (default 10.18.3.10)
