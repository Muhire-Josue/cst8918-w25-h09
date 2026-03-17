variable "label_prefix" {
  description = "Prefix used for naming Azure resources."
  type        = string
}

variable "region" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "southafricanorth"
}

variable "kubernetes_version" {
  description = "AKS Kubernetes version."
  type        = string
  default     = null
}

variable "node_count_min" {
  description = "Minimum number of AKS nodes."
  type        = number
  default     = 1
}

variable "node_count_max" {
  description = "Maximum number of AKS nodes."
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "VM size for the AKS default node pool."
  type        = string
  default     = "Standard_B2s"
}