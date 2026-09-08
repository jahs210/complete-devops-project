terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.6.0"
    }
  }
}

provider "minikube" {
    kubernetes_version = "v1.37.0"
  # Configuration options
}


resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "complete-devops-project"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
}