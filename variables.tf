variable "example_subdomains" {
  type = map(object({
    name = string
  }))

  default = {
    dev = {
      name = "dev"
    },
    stg = {
      name = "stg"
    },
    prod = {
      name = "prod"
    }
  }
}

variable "default_example_domain" {
  type    = string
  default = "school-guardian.net.br"
}