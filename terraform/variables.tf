### Common configuration ###
variable "datacenter_name" {
  description = "Name of the datacenter"
  default = "dc1"
}
variable "os_image" {
  description = "Define the source to the os image used by Kubernetes"
  default = "http://cloud-images.ubuntu.com/releases/bionic/release-20191008/ubuntu-18.04-server-cloudimg-amd64.img"
}
variable "kubernetes_pool_path" {
  description = "Define the path to libvirt pool"
  default = "/tmp/terraform-provider-libvirt-pool-kubernetes"
}
variable "kubernetes_drivers" {
  description = "List of drivers that should be enabled on the Kubernetes clients"
  type    = list(string)
  default = ["docker", "raw_exec", "java"]
}


### Kubernetes server configuration ###
variable "kubernetes_server_name" {
  description = "The name of the Kubernetes server"
  default = "kubernetes-server"
}
variable "kubernetes_server_ips" {
  description = "List of Kubernetes server ip's"
  type    = list(string)
  default = ["10.18.3.10", "10.18.3.11", "10.18.3.12"]
}
variable "kubernetes_server_enable_client" {
  description = "Enable the client on Kubernetes server"
  type = bool
  default = false
}
variable "kubernetes_server_vcpu" {
  description = "The number of vcpu to assign Kubernetes server"
  default = 1
}
variable "kubernetes_server_memory" {
  description = "The number of memory to assign Kubernetes server"
  default = "512"
}
variable "kubernetes_server_disk_size" {
  description = "The size of the disk on Kubernetes server"
  default = "4294965097" #4gb
}


### Kubernetes worker configuration ###
variable "kubernetes_worker_name" {
  description = "The name of the Kubernetes worker node"
  default = "kubernetes-worker"
}
variable "kubernetes_worker_ips" {
  description = "List of Kubernetes worker ip's"
  type    = list(string)
  default = ["10.18.3.20", "10.18.3.21"]
}
variable "kubernetes_worker_vcpu" {
  description = "The number of vcpu to assign Kubernetes worker node"
  default = 2
}
variable "kubernetes_worker_memory" {
  description = "The number of memory to assign Nomad client"
  default = "1024"
}
variable "kubernetes_worker_disk_size" {
  description = "The size of the disk on Nomad client"
  default = "6442447645" #6gb
}