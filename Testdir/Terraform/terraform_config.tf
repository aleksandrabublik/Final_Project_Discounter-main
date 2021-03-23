terraform {
   backend "s3" {
    bucket = "testinstanse-project-states"
    key    = "ExampleInstance/terraform.tfstate"
    region = "us-west-2"
   }
}