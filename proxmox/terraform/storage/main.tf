module "storage_node" {
  source = "github.com/m0r4a/k3s-in-proxmox//terraform/modules/storage_node?ref=main"

  proxmox_node         = var.proxmox_node
  template_vm_id       = var.template_vm_id
  vm_user              = var.vm_user
  vm_password          = var.vm_password
  ssh_public_key       = var.ssh_public_key
  ssh_private_key_path = var.ssh_private_key_path
  network_bridge       = var.network_bridge
  network_gateway      = var.network_gateway

  ansible = {
    enabled = true
    path    = "../../ansible"
  }

  nodes = {
    storage1 = {
      vmid            = 301
      ip              = "10.0.0.20"
      memory          = 4096
      cores           = 2
      storage_disk_gb = 100
    }
  }
}
