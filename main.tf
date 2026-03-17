resource "azurerm_resource_group" "rg" {
  name     = "${var.label_prefix}-h09-rg"
  location = var.region
}

resource "azurerm_kubernetes_cluster" "app" {
  name                = "${var.label_prefix}-h09-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.label_prefix}-h09"

  kubernetes_version = var.kubernetes_version

  default_node_pool {
    name                = "systempool"
    vm_size             = var.vm_size
    enable_auto_scaling = true
    min_count           = var.node_count_min
    max_count           = var.node_count_max
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "lab"
    course      = "cst8918"
    assignment  = "h09"
  }
}
