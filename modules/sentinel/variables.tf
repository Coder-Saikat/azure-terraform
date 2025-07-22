variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sentinel_workspace_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
