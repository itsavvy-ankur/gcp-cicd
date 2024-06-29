module "project" {
  source         = "../../modules//project"
  name           = var.project_id
  project_create = false

  services = [
    "aiplatform.googleapis.com",
    "artifactregistry.googleapis.com",
    "bigquery.googleapis.com",
    "cloudbuild.googleapis.com",
    "clouddeploy.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "logging.googleapis.com",
    "run.googleapis.com",
    "servicenetworking.googleapis.com",
    "storage.googleapis.com",
  ]

  iam_by_principals = {
    "user:ankur.saxena@cts.co" = [
      "roles/compute.networkAdmin",
    ]
  }

}

