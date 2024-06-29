# https://www.davidc.net/sites/default/subnets/subnets.html?network=10.0.0.0&mask=16&division=19.ff020
module "vpc" {
  source     = "../../modules//net-vpc"
  project_id = var.project_id
  name       = "demo-net-dev-vpc-1"
  subnets = [
    {
      ip_cidr_range = "10.0.0.0/24"
      name          = "demo-gke-eu-west2-subnet"
      region        = "europe-west2"
      secondary_ip_ranges = {
        pods     = "172.16.0.0/20"
        services = "192.168.0.0/24"
      }
    },

  ]
}