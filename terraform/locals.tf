locals {
  app_cluster_name        = "devops-challenge-cluster"
  availability_zones           = ["us-east-1a", "us-east-1b", "us-east-1c"]
  backend_app_task_famliy         = "backend-app-task"
  container_port_backend               = 8080
  container_port_frontend      = 3000
  backend_app_task_name           = "backend-app-task"
  ecs_task_execution_role_name = "demo-app-task-execution-role"

  application_load_balancer_name = "backend-app-alb"
  target_group_name              = "backend-alb-tg"

  demo_app_service_name = "devops-challenge-app-service"
}