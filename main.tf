resource "azurerm_availability_set" "avail_set" {
  count               = "${var.count}"
  location            = "${var.location}"
  name                = "${var.name}${count.index}"
  resource_group_name = "${var.res_group_name}"

  tags {
    environment = "${var.tags}"
  }
}
