provider "google" {
  region = "us-central1"
}

resource "google_service_account" "service_account" {
  account_id   = "service-account-id"
  display_name = "Service Account"
  project      = "extreme-world-382815"
}
resource "google_artifact_registry_repository" "repository" {
  repository_id = "hello-app-docker"
  location      = "us-central1"
  format        = "DOCKER"
  project       = "extreme-world-382815"
}