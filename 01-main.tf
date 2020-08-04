## https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html

resource "digitalocean_kubernetes_cluster" "example" {
  name    = "example"
  region  = "nyc1"
  version = "1.18.3-do.0"

  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }
}