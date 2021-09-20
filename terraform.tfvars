os_image = "/cdimages/ubuntu-18.04-server-cloudimg-amd64.img"
kubernetes_pool_path = "/vm-disks/terraform-provider-libvirt-pool-kubernetes"

kubernetes_server_ips = ["10.18.3.10"]
kubernetes_server_enable_client = false
kubernetes_server_vcpu = 1
kubernetes_server_memory = 1024
kubernetes_server_disk_size = "16106127360" #15gb

kubernetes_worker_ips = ["10.18.3.20"]
kubernetes_worker_vcpu = 2
kubernetes_worker_memory = 1024
kubernetes_worker_disk_size = "16106127360" #15gb
