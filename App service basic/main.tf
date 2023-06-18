resource "azurerm_service_plan" "asp-1" {
  name                = "basic-asp"
  location            = "eastus"
  resource_group_name = "harshitjain04"
  os_type = "Windows"
  sku_name = "B1"
}

resource "azurerm_windows_web_app" "mywebserver" {
  name                = "mywebapp1091"
  location            = "eastus"
  resource_group_name = "harshitjain04"
  service_plan_id = azurerm_service_plan.asp-1.id

site_config {
  application_stack {
      dotnet_version = "v5.0"
  }
}
  

 

  
}