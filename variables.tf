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

variable "backend-domain" {
  type = string
  default = "describingcitiesbackend.craigdsilva.com"
}

variable "frontend-domain" {
  type = string
  default = "describingcities.craigdsilva.com"
}

variable "db-username" {
  type = string
  sensitive = true
}
variable "db-password" {
  type = string
  sensitive = true
}