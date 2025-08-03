output "endpoint" {
  value = aws_eks_cluster.ashish-cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.ashish-cluster.certificate_authority[0].data
}
