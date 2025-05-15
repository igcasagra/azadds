terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.28.0"
    }
    # Remova ou comente a linha abaixo
    # template = {
    #   source  = "hashicorp/template"
    #   version = "2.3.0"
    # }
  }
  backend "azurerm" {
    resource_group_name  = "rg-hml-adds-eu"
    storage_account_name = "sahmladdseu"
    container_name       = "adds"
    key                  = "JvfDetUSalSdhunlu1JaDpRAFtdIjuTWouRetEKFpqk4F04G2P9JpN5Nb8baI63+PJyPnPTaKeqD+AStlt5pug=="
  }
}

provider "azurerm" {
  # Configuration options
  features {
  }
  subscription_id = "395daf96-4c18-43f5-90f7-c0ae294bcc28"
}
