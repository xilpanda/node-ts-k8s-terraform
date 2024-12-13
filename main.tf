provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "app" {
  metadata {
    name = "my-node-ts-app"
    labels = {
      app = "my-node-ts-app"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "my-node-ts-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "my-node-ts-app"
        }
      }

      spec {
        container {
          image = "xil01/my-node-ts-app:latest"
          name  = "my-node-ts-app"

          port {
            container_port = 4000
          }
        }
      }
    }
  }
}
