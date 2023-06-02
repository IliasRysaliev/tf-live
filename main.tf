provider "google" {
  region = "us-central1"
}

resource "google_service_account" "service_account" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}
resource "google_artifact_registry_repository" "repository" {
  repository_id = "ilias-repo"
  location = "us-central1"
  format   = "DOCKER"
}