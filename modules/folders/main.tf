resource "google_folder" "folders" {
  count        = length(var.names)
  display_name = "${local.prefix}${element(var.names, count.index)}"
  parent       = var.parent
}

locals {
  prefix = var.prefix == "" ? "" : "${var.prefix}-"
}
