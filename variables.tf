# fill it next time
variable "image" {
  type        = string
  default     = "empty"
  description = "image name."
}

variable "profile" {
  type        = string
  description = "the name of the profile."
}

variable "vpc" {
  type        = string
  description = "the name of the vpc."
}

variable "interface" {
  type        = string
  description = "The name of the interface."
}

variable "keyless" {
  type        = string
  description = "The name of the sshkey."
}
