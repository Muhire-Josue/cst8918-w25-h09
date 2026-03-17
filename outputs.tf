output "kube_config" {
  description = "Raw kubeconfig for the AKS cluster."
  value       = azurerm_kubernetes_cluster.app.kube_config_raw
  sensitive   = true
}

output "resource_group_name" {
  description = "The name of the Azure resource group."
  value       = azurerm_resource_group.rg.name
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster."
  value       = azurerm_kubernetes_cluster.app.name
}