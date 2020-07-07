variable "app_name" {
  description = "The app name used for tagging infrastructure."
  type        = string
}

variable "environment" {
  description = "The environment in which this infrastructure will be provisioned."
  type        = string
}

variable "queue_usage" {
  description = "Intended usage for this queue, i.e. email, Slack, etc."
  type        = string
}
