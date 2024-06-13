resource "kubernetes_service_account" "eks_controller_sa" {
  metadata {
    name = "aws-load-balancer-controller"
  }

}