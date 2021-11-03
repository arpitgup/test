provider "google" {
  version     = "~> 2.5.0"
  # Update credentials to the correct location, alternatively set   GOOGLE_APPLICATION_CREDENTIALS=/path/to/.ssh/bq-key.json in your shell session and   remove the credentials attribute.
  #credentials = file("/path/to/.ssh/bq-key.json")
}

terraform {
  backend "gcs" {
    bucket  = "terraform-state-pro"
    prefix  = "terraform/state"
  }
}

module "bigquery" {
  source            = "terraform-google-modules/bigquery/google" # Path to the module
  version           = "~> 2.0.0" # Specify the version of the module you require
  dataset_id        = "autorepair_testing"
  dataset_name      = "autorepair_testing"
  description       = "final set" # updated the description accordingly
  expiration        = var.expiration
  project_id        = var.project_id
  location          = "US" # Update location if needed
  tables            = var.tables
  time_partitioning = var.time_partitioning
  dataset_labels    = var.dataset_labels
}

resource "random_id" "instance_id" {
 byte_length = 8
}
resource "google_notebooks_instance" "instance" {
 provider = google-beta
 name = "nb-${random_id.instance_id.hex}"
 location = "us-west1-a"
 machine_type = "n1-standard-1"
 install_gpu_driver = true
 accelerator_config {
 type = "NVIDIA_TESLA_T4"
 core_count = 1
 }
 vm_image {
 project = "deeplearning-platform-release"
 image_family = "tf-latest-gpu"
 }
}
