/*
  CLUSTER CONFIG
*/

variable "cluster-name" {
  default = "sound-monitor-cluster"
}

/*
  SERVICE CONFIG
*/

variable "service-name" {
  description = "Name of the ECS service"
}

variable "family-name" {
  description = "Family for task definition"
}

variable "soundmonitor_mainsubnet" {
  description = "ID of main subnet of SoundMonitorVPC"
}

variable "cpu" {
  description = "CPU cpu units"
}

variable "memory" {
  description = "Memory units"
}
/*
  AWS CONFIG
*/

variable "aws_region" {
  description = "AWS Region to deploy"
  default = "us-east-1"
}

variable "aws_provider_key" {
  description = "AWS key for deploy and infrastructure providing"
}

variable "aws_provider_secret" {
  description = "AWS secret for deploy and infrastructure providing"
}

/*
  INFERENCER
*/

variable "aws_inferencer_key" {
  description = "AWS key for inferencer"
}

variable "aws_inferencer_secret" {
  description = "AWS secret for inferencer"
}

variable "mapper_url" {
  description = "URL of class mapper"
}

/*
  INEFERENCER-KAFKA CONFIGURATION
*/

variable "kafka_group_id" {
  description = "Kafka inferencers group id"
}

variable "kafka_data_upload_event" {
  description = "Kafka event of data uploading"
}
variable "kafka_process_result_event" {
  description = "Kafka event of process result"
}

variable "kafka_encode_format" {
  description = "encode format"
}

variable "kafka_bootstrap_server_one" {
  description =  "Endpoint of kafkaserver"
}


/*
  AWS ENTITIES
*/

variable "ecr_image_tag" {
  description = "Inferencer latest image tag"
}

variable "ecr_image_repo" {
  description = "Inferencer repo"
}

variable "records_bucket_name" {
  description =  "audio files bucket NAME"
}

/*
  DEVICE
*/

variable "device_selector" {
  description =  "Device to use"
}
