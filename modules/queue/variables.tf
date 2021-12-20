variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription Id"
  type        = string
}

variable "client_id" {
  description = "Azure client Id"
  type        = string
}

variable "client_secret" {
  description = "Azure client secret"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant Id"
  type        = string
}

variable "asq_names" {
  description = "List of names of the azure storage queues."
  type        = list(string)
}

variable "storage_account_name" {
  description = "The name of the azure storage account."
  default     = null
  type        = string
}
