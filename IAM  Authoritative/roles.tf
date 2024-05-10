resource "google_project_iam_custom_role" "bq-sa-role" {
  role_id     = "bigquery.customRole"
  title       = "BigQuerry Custom Role"
  description = "BigQuerry Custom Role for SAs and users"
  permissions = [
    "bigquery.routines.get",
    "bigquery.tables.getData",
    "bigquery.tables.updateData",
    "bigquery.tables.create",
    "bigquery.tables.get",
    "bigquery.datasets.get",
    "bigquery.jobs.create",
    "bigquery.readsessions.create",
    "bigquery.readsessions.getData",
    "bigquery.tables.list",
    "resourcemanager.projects.get"
  ]
}
