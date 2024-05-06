module "gke_cluster" {
  source           = "github.com/vlad-batrak/tf-google-gke-cluster"
  GOOGLE_REGION    = var.GOOGLE_REGION
  GOOGLE_PROJECT   = var.GOOGLE_PROJECT
  GKE_CLUSTER_NAME = var.GKE_CLUSTER_NAME
  GKE_NUM_NODES    = var.GKE_NUM_NODES
}
  