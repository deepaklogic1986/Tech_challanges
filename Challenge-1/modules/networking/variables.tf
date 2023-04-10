variable "resource_group" {}
variable "location" {}
variable "vnetcidr" {}
variable "websubnetcidr" {}
variable "appsubnetcidr" {}
variable "dbsubnetcidr" {}
variable "tags" {
  type = map(any)
}