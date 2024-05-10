# *** module "gke_cluster" ***

variable "GOOGLE_REGION" {
  type        = string
  default     = "us-central1-a"
  description = "GCP project location"
}

variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project ID"
}

variable "GKE_CLUSTER_NAME" {
  type        = string
  default     = "demo"
  description = "GKE cluster name"
}

variable "GKE_NUM_NODES" {
  type        = number
  default     = 2
  description = "Number of GKE cluster nodes"
}

variable "GKE_MACHINE_TYPE" {
  type        = string
  default     = "e2-micro"
  description = "Machine type"
}

# *** module "flux_bootstrap" and module "github_repository" ***

variable "GITHUB_OWNER" {
  type        = string
  description = "Github owner"
}

variable "GITHUB_TOKEN" {
  type        = string
  description = "Github token"
  sensitive = true
}

variable "FLUX_GITHUB_REPO" {
  type        = string
  default     = "flux-gitops"
  description = "Flux github repo"
}

variable "FLUX_GITHUB_TARGET_PATH" {
  type        = string
  default     = "clusters"
  description = "Flux manifest subdirectory"
}
