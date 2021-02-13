

provider aws {
  region = "eu-central-1" # change the region
}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "yourbucketname"
    region = "eu-central-1"
    key = "tf.state"
  }
  
}

module "image-registry" {
    source = "github.com/" # your github repo link
    ecr_names = var.ecr_names
}
