terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 2.98"
    }
  }
}

provider "azurerm" {
  features {}
}

module "account" {
  source = "../../modules/account"

  resource_group_name = "<existing_resource_group_name>"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}

module "container" {
  source = "../../modules/container"

  storage_account_name = module.account.storage_account_name
  container_names      = ["test1", "test2"]
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}

module "queue" {
  source = "../../modules/queue"

  storage_account_name = module.account.storage_account_name
  asq_names            = ["test1-asq", "test2-asq"]
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}

module "blob" {
  source = "../../modules/blob"

  storage_account_name   = module.account.storage_account_name
  storage_container_name = "test1"
  blob_name              = "test-blob"
  blob_source            = "test.text"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
