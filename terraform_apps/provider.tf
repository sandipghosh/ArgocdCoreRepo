provider "argocd" {
  server_addr = var.argocd_host
  username    = var.argocd_username
  password    = var.argocd_password
  insecure    = var.insecure
}