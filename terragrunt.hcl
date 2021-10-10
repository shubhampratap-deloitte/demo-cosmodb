terraform {
  source = "/Users/shupundir/demo-cosmodb/cosmodb"
}
   
remote_state {
    backend = "azurerm"
      generate = {
         path      = "backend.tf"
         if_exists = "overwrite_terragrunt"
  }

    config = {
        key = "${path_relative_to_include()}/terraform.tfstate"
        resource_group_name = "azhuxdemo"
        storage_account_name = "huxstore1"
        container_name = "huxcontainer1"
    }
}

  
  inputs = {
       resource_group_name             = "DemoCosmosDBTerraform-rg1"
       resource_group_location         = "australiaeast"
       cosmos_db_account_name           = "democosmosterraform2"
       failover_location               = "westus"

  }
