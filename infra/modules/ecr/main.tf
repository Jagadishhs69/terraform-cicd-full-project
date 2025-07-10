resource "aws_ecr_repository" "app" {
  name = "${var.env}-nodejs-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.env}-nodejs-app"
  }
}