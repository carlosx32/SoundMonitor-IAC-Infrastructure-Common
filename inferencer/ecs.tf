data "aws_ecs_cluster" "inferencer" {
  cluster_name = "monitor-inferencers-cluster"
}

data "aws_subnet" "main" {
    filter {
    name   = "tag:Name"
    values = ["${var.soundmonitor-main-subnet}"]
  }
}

resource "aws_ecs_service" "main" {
  name = var.service-name
  cluster = data.aws_ecs_cluster.inferencer.arn
  task_definition = aws_ecs_task_definition.main.arn
  launch_type = "FARGATE"
  desired_count = 1

  lifecycle {
    ignore_changes = [
      desired_count]
  }

  network_configuration {
    subnets          = [data.aws_subnet.main.id]
    assign_public_ip = true
  }

}
