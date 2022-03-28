variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the azure storage account."
  default     = null
  type        = string
}

variable "container_names" {
  description = "List of names of the azure storage containers."
  type        = list(string)
  default     = null
}

variable "container_access_type" {
  description = "The Access Level configured for this Container. Possible values are blob, container or private. Defaults to private."
  default     = "private"
  type        = string
}
