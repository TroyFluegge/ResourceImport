provider "kubernetes" {
}

resource "kubernetes_namespace" "tf-test" {
  metadata {
    name = "tf-test"
  }
}

resource "kubernetes_namespace" "tf-test2" {
  metadata {
    name = "tf-test2"
  }
}