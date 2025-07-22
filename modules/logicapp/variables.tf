variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}


variable "logicapp_name" {
  type = string
}

variable "logicapp_plan_name" {
  type = string
}

variable "logicapp_sku" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
