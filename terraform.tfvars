os_image = "/cdimages/ubuntu-18.04-server-cloudimg-amd64.img"
kubernetes_pool_path = "/vm-disks/terraform-provider-libvirt-pool-kubernetes"

kubernetes_node_ssh_password = "$6$rounds=4096$pdXIzh9u9YxSJGTf$d8X9IsJye2.lrD0ekP3aTBgAtlbOeI8E/JRJBmMKpniIyh28hXGQ8rVAQD2/0x7QjkmbClUccmHCCACg59MWF/"
kubernetes_node_ssh_password_plain = "softica"
kubernetes_node_ssh_username = "kubernetes"

kubernetes_join_token = "secrettoken"

kubernetes_server_ips = ["10.18.3.10"]
kubernetes_server_enable_client = false
kubernetes_server_vcpu = 2
kubernetes_server_memory = 2048
kubernetes_server_disk_size = "16106127360" #15gb

kubernetes_worker_ips = ["10.18.3.20","10.18.3.21"]
kubernetes_worker_vcpu = 4
kubernetes_worker_memory = 4096
kubernetes_worker_disk_size = "16106127360" #15gb