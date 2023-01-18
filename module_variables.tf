variable "vpc-cidr-block" {
  type = string
  default = "10.0.0.0/16" #default value if you not entered a value
}

variable "public-cidr-block" {
  default = "10.0.1.0/24"
  type = string
}

variable "private-cidr-block" {
  default = "10.0.2.0/24"
  type = string
}

variable "region" {
  
}