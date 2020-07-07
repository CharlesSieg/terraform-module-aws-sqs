resource "aws_sqs_queue" "queue" {
  delay_seconds             = 0
  max_message_size          = 262144 // 256 KB
  message_retention_seconds = 345600 // 4 days
  name                      = "${var.environment}-${var.app_name}-${var.queue_usage}-queue"
  receive_wait_time_seconds = 0

  tags = {
    Application = var.app_name
    Billing     = "${var.environment}-${var.app_name}"
    Environment = var.environment
    Name        = "${var.environment}-${var.app_name}-${var.queue_usage}-queue"
    Terraform   = true
  }
}
