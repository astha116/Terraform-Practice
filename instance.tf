resource "azurerm_resource_group" "example" {
  name     = "example3"
  location = "East US"
}
resource "azurerm_template_deployment" "terraform-arm" {
  name                = "terraform1"
  resource_group_name = "example3"
  template_body = file("azuredeploy.json")
  deployment_mode = "Incremental"
}
