# Helm application
resource "argocd_application" "helm-app-using-terraform" {
  metadata {
    name      = "helm-app-using-terraform"
    namespace = var.root_namespace
    labels = {
      test = "true"
    }
  }

  spec {
    destination {
      server    = var.destination_server
      namespace = var.destination_namespace
    }

    source {
      repo_url        = var.git_repo_address
      path            = var.git_repo_path
      target_revision = var.target_revision

      helm {
        value_files = var.value_files
      }
    }
  }
}