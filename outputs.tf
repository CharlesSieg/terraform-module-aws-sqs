output "arn" {
  description = "ARN for SQS queue."
  value       = aws_sqs_queue.queue.arn
}

output "url" {
  description = "URL for SQS queue."
  value       = aws_sqs_queue.queue.id
}
