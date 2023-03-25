variable "instance" {
  sensitive = true
  type = string
}

variable "allocation" {
  sensitive = true
  type = string
}

variable "pub_key" {
  sensitive = true
  type = string
}

variable "security-group-id" {
  sensitive = true
  type = string
}

variable "cidr" {
  sensitive = true
  type = string
}