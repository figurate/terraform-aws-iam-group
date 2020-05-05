locals {
  userroles = {
    poweruser     = ["arn:aws:iam::aws:policy/PowerUserAccess"]
    administrator = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    ecr           = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"]
    codecommit    = ["arn:aws:iam::aws:policy/AWSCodeCommitPowerUser"]
    s3_readonly   = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  }
}
