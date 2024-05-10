resource "google_project_iam_member" "composer-role-binding" {
  project = var.project_id
  
  for_each = toset([
    "roles/composer.worker",
    "roles/iam.serviceAccountUser"
  ])
  role = each.key

  member = "serviceAccount:${google_service_account.composer-service-account.email}"
}

resource "google_project_iam_member" "bigquery-role-binding" {
  project = var.project_id

  for_each = toset([
    "projects/${var.project_id}/roles/${google_project_iam_custom_role.bq-sa-role.role_id}"
  ])
  role = each.key

  member = "serviceAccount:${google_service_account.bigquery-service-account.email}"
}

resource "google_project_iam_member" "dataproc-role-binding" {
  project = var.project_id

  for_each = toset([
    "roles/dataproc.worker"
  ])
  role = each.key
  member = "serviceAccount:${google_service_account.dataproc-service-account.email}"
}

resource "google_project_iam_member" "gke-role-binding" {
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

  member = "serviceAccount:${google_service_account.gke-service-account.email}"
}
