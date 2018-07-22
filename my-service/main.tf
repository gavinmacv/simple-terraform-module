module "foo" {
  source = "../terraform-example-basic"
  instance_name = "foo"
}

module "bar" {
  source = "../terraform-example-basic"
  instance_name = "bar"
}