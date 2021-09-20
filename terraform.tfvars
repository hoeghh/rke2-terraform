datacenter_name = "dc1"
os_image = "../images/ubuntu-18.04-server-cloudimg-amd64.img"

kubernetes_server_ips = ["10.18.3.10", "10.18.3.11", "10.18.3.12"]
kubernetes_server_enable_client = false
kubernetes_server_vcpu = 1
kubernetes_server_memory = 1024
kubernetes_server_disk_size = "4294965097" #4gb

kubernetes_worker_ips = ["10.18.3.20", "10.18.3.21"]
kubernetes_worker_vcpu = 2
kubernetes_worker_memory = 1024
kubernetes_worker_disk_size = "6442447645" #6gb