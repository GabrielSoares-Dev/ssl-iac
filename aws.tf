provider "aws" {
  alias  = "us_east-2"
  region = "us-east-2"

  default_tags {
    tags = {
      "owner"        = "DevopsTeam"
      "project-name" = "ssl-iac"
      "managed-by"   = "terraform"
    }
  }
}

provider "aws" {
  alias  = "us_east-1"
  region = "us-east-1"

  default_tags {
    tags = {
      "owner"        = "DevopsTeam"
      "project-name" = "ssl-iac"
      "managed-by"   = "terraform"
    }
  }
}