module "cloudbuild_private_pool" {
  source = "../../modules//cloudbuild-private-pool"
  depends_on = [
    module.project,
    module.vpc
  ]
  project_id                   = var.project_id
  network_project_id           = var.project_id
  private_pool_vpc_name        = module.vpc.name
  location                     = "europe-west2"
  create_cloudbuild_network    = false
  worker_address               = "10.0.1.0"
  worker_address_prefix_length = 24
}