terraform {
  backend "s3" {
    bucket = "sctp-ce3-tfstate-bucket-1"
    key    = "fooweiguos3sqs.tfstate" #Change the value  of this to yourname-docker-ec2.tfstate for  example
    region = "us-east-1"
  }
}
