resource "google_project_iam_binding" "composer-role-binding" {
  project = var.project_id
  # role = "roles/composer.worker"

  for_each = toset([
    "roles/composer.worker",
    "roles/iam.serviceAccountUser"
  ])
  role = each.key


  members = [
    "serviceAccount:${google_service_account.composer-service-account.email}",
  ]
}

resource "google_project_iam_binding" "bigquery-role-binding" {
  project = var.project_id

  for_each = toset([
    "projects/${var.project_id}/roles/${google_project_iam_custom_role.bq-sa-role.role_id}"
  ])
  role = each.key


  members = [
    "serviceAccount:${google_service_account.bigquery-service-account.email}",
  ]
}

resource "google_project_iam_binding" "dataproc-role-binding" {
  project = var.project_id

  for_each = toset([
    "roles/dataproc.worker"
  ])
  role = each.key


  members = [
    "serviceAccount:${google_service_account.dataproc-service-account.email}",
  ]
}

resource "google_project_iam_binding" "gke-role-binding" {
  project = var.project_id

  for_each = toset([
    "roles/artifactregistry.reader",
    "roles/storage.objectViewer",
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter",
    "roles/monitoring.viewer",
    "roles/stackdriver.resourceMetadata.writer",
  ])
  role = each.key


  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}",
  ]
}