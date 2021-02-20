provider "aws" {
  region = "eu-west-1"
  }

resource "aws_ecr_repository" "trial-repository" {
  name                 = "try-repo"
  image_tag_mutability = "MUTABLE"
}
