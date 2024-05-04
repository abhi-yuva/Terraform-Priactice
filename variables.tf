variable "image" {
    type = string
    default = "ami-0cf2b4e024cdb6960"
}

variable "type" {
    type = string
    default = "t2.micro"
}

variable "location" {
    type = string
    default = "us-west-2" 
}

variable "provider-version" {
    type = string
    default = "~> 5.0"
  
}