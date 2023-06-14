# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service
resource "google_project_service" "compute" {
    project = "lab1-test-project"
    service = "compute.googleapis.com"
}

resource "google_project_service" "container" {
    project = "lab1-test-project"
    service = "container.googleapis.com"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
resource "google_compute_network" "main-vpc" {
    project                         = "lab1-test-project" 
    name                            = "main-vpc"
    routing_mode                    = "REGIONAL"
    auto_create_subnetworks         = false
    mtu                             = 1460
    delete_default_routes_on_create = false

    depends_on = [
        google_project_service.compute,
        google_project_service.container
    ]
}