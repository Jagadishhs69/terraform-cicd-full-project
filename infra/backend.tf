terraform {
  backend "s3" {
    bucket = "terraform-state-cicd-339933"
    key = "terraform-state-cicd-339933/qa/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  
  }
}