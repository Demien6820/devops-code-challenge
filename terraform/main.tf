terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}




module "ecsCluster" {
  source = "./modules/ecs"

 app_cluster_name = local.app_cluster_name
  availability_zones    = local.availability_zones
  app_task_famliy         = local.backend_app_task_famliy 
  container_port_backend               = local.container_port_backend
  container_port_frontend   = local.container_port_frontend
  app_task_name           = local.backend_app_task_name 
  ecs_task_execution_role_name = local.ecs_task_execution_role_name

  application_load_balancer_name = local.application_load_balancer_name
  target_group_name              = local.target_group_name
  demo_app_service_name          = local.demo_app_service_name
}