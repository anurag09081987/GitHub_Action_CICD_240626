terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.78.0"
        }
    }
    backend "azurerm" {
        resource_group_name = pipelinetest1
        storage_account_name = pipelinetest1
        container_name = pipelinecontainer
        key = action1.terraform.tfstate
    }
}
provider "azurerm"{
    features {}
    subscription_id = "4e434342-8dc1-4d58-8efd-e7ca00355854"
}