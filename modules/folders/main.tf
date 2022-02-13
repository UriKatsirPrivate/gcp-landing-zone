# locals {
#   folders = {
#     for x in var.folders :
#     "${x.folder_name}/${x.folder_parent}" => x
#   }
# }

# resource "google_folder" "folders1" {
#   for_each     = local.folders
#   display_name = each.value.folder_name
#   parent       = each.value.folder_parent
# }


resource "google_folder" "common-folder" {
  display_name = "common"
  parent       = var.parent
}

resource "google_folder" "folders" {
  count        = length(var.names)
  display_name = "${local.prefix}${element(var.names, count.index)}"
  parent       = google_folder.common-folder.name
  #parent       = var.parent
}

locals {
  prefix = var.prefix == "" ? "" : "${var.prefix}-"
}
