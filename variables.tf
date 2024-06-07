variable "example_subdomains" {
  type = map(object({
    name = string
  }))

  default = {
    dev = {
      name = "dev"
    },
    mysq-db-dev = {
      name = "mysq-db-dev"
    }
  }
}

variable "default_example_domain" {
  type    = string
  default = "school-guardian.net.br"
}