resource "google_service_account" "composer-service-account" {
  account_id   = "composer-sa"
  display_name = "Composer Service Account"
}

resource "google_service_account" "bigquery-service-account" {
  account_id   = "bigquery-sa"
  display_name = "BigQuery Service Account"
}

resource "google_service_account" "dataproc-service-account" {
  account_id   = "dataproc-sa"
  display_name = "Dataproc Service Account"
}

resource "google_service_account" "gke-service-account" {
  account_id   = "gke-sa"
  display_name = "GKE Service Account"
}