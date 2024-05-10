# resource "google_project_iam_custom_role" "composer-basic-role" {
#   project     = var.project_id
#   role_id     = "composer.basicRole"
#   title       = "Composer SA Role"
#   description = "Oredata Composer Service Account"
#   permissions = [
#     "iam.serviceAccounts.actAs"
#   ]

#   # permissions = [
#   #   "artifactregistry.packages.delete",
#   #   "artifactregistry.packages.get",
#   #   "artifactregistry.repositories.downloadArtifacts",
#   #   "artifactregistry.repositories.list",
#   #   "cloudbuild.builds.create",
#   #   "cloudbuild.builds.get",
#   #   "container.clusters.get",
#   #   "container.clusters.getCredentials",
#   #   "container.clusters.update",
#   #   "container.configMaps.get",
#   #   "container.configMaps.update",
#   #   "container.deployments.get",
#   #   "container.deployments.update",
#   #   "container.events.list",
#   #   "container.jobs.delete",
#   #   "container.jobs.list",
#   #   "container.namespaces.get",
#   #   "container.pods.exec",
#   #   "container.pods.get",
#   #   "container.pods.list",
#   #   "logging.logEntries.create",
#   #   "monitoring.metricDescriptors.list",
#   #   "monitoring.timeSeries.create",
#   #   "monitoring.timeSeries.list",
#   #   "pubsub.subscriptions.consume",
#   #   "pubsub.topics.publish",
#   #   "storage.objects.create",
#   #   "storage.objects.delete",
#   #   "storage.objects.get",
#   #   "storage.objects.getIamPolicy",
#   #   "storage.objects.list",
#   #   "storage.objects.update",
#   #   "resourcemanager.projects.get",#############
#   #   "container.configMaps.create",
#   #   "container.daemonSets.create",
#   #   "container.daemonSets.get",
#   #   "container.deployments.create",
#   #   "container.horizontalPodAutoscalers.get",
#   #   "container.jobs.create",
#   #   "container.jobs.get",
#   #   "container.operations.get",
#   #   "container.pods.create",
#   #   "container.pods.delete",
#   #   "container.pods.getLogs",
#   #   "container.pods.update",
#   #   "container.services.create",
#   #   "container.services.get",
#   #   "container.statefulSets.create",
#   #   "container.statefulSets.get",
#   #   "logging.logEntries.list",
#   #   "logging.privateLogEntries.list",
#   #   "monitoring.metricDescriptors.get",
#   #   "pubsub.topics.create",
#   #   "source.repos.get",
#   #   "source.repos.list",
#   #   "storage.buckets.get",
#   #   "storage.buckets.list",

#   # ]
# }
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
