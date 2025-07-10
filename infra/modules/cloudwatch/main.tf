resource "aws_cloudwatch_log_group" "app" {
  name              = "/${var.env}/app"
  retention_in_days = 14
  tags = {
    Name = "${var.env}-app-logs"
  }
}