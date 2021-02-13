variable "ecr_names" {
  description = "Names of the AWS ECR registries (docker image registries) that should be created"
  type = list(string)
}
