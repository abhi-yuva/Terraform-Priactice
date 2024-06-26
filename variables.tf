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

variable "environment" {
  type = list(string)
  default = [ "dev", "uat" , "stg", "prod" ]
}
