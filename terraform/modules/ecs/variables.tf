variable "app_cluster_name" {
  description = "ECS Cluster Name"
  type        = string
}

variable "availability_zones" {
  description = "us-east-1 AZs"
  type        = list(string)
}

variable "app_task_famliy" {
  description = "ECS Task Family"
  type        = string
}

variable "ecr_repo_url_backend" {
  description = "ECR Repo URL"
  type        = string
  default = "050752645125.dkr.ecr.us-east-1.amazonaws.com/light-feather-backend"
}
variable "ecr_repo_url_frontend" {
  description = "ECR Repo URL"
  type        = string
  default = "050752645125.dkr.ecr.us-east-1.amazonaws.com/light-feather-frontend"
}

variable "container_port_backend" {
  description = "Container Port"
  type        = number
}

variable "container_port_frontend" {
  description = "Container Port"
  type        = number
}

variable "app_task_name" {
  description = "ECS Task Name"
  type        = string
}

variable "ecs_task_execution_role_name" {
  description = "ECS Task Execution Role Name"
  type        = string
}

variable "application_load_balancer_name" {
  description = "ALB Name"
  type        = string
}

variable "target_group_name" {
  description = "ALB Target Group Name"
  type        = string
}

variable "demo_app_service_name" {
  description = "ECS Service Name"
  type        = string
}