module "s3" {
  source  = "app.terraform.io/dimpy_test/s3/aws"
  version = "1.0.0"
  # insert required variables here
  app_name = "dimpymoduletestt"
  environment = "dev"
}

terraform {
  cloud {
    organization = "dimpy_test"
    workspaces {
      name = "tf-module-test-2"
    }
  }
}
