variable "aws_region" {
  type = string
  default = "eu-west-1"
}

variable "tags" {
  type = map

  validation {
    condition     = lookup(var.tags, "costCentre", "") != "" && lookup(var.tags, "owner", "") != ""
    error_message = "Tags must include costCentre and Owner."
  }
}
