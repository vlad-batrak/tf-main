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
