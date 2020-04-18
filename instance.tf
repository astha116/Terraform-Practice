provider "azurerm" {
    version = "~>1.19"
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "East US"
}
resource "azurerm_template_deployment" "terraform-arm" {
  name                = "terraform-arm-01"
  resource_group_name = "azurerm_resource_group.example.name"
  template_body = file("azuredeploy.json")
  deployment_mode = "Incremental"
}