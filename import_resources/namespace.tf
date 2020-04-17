resource "kubernetes_namespace" "local-create" {
  metadata {
    name = "local-create"
  }
}