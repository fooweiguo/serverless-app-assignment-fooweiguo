# Assignment 3.7

This repository allows you to run GitHub action to set up the following AWS
serverless resources: 

1. S3 bucket called fooweiguo-s3-event-notification-queue
2. SQS service called fooweiguo-s3-sqs

The repository consists of the following folders and files:

1. .github/workflow/TF.yaml
2. .gitignore
3. backend.tf (to store the TF state file)
4. main.tf (for AWS resource configurations)
5. provider.tf

The GitHub Action will run when *pushing* changes to the main branch. After
creation, there will be a 180 second sleep time for users to verify the creation
and ensure that the SQS service is up and running. This can be done by uploading
any file on the S3 bucket, and then polling for messages on SQS. 

After 180 seconds have lapsed, the terraform will proceed to destroy. In the
terraform main.tf file, for the S3 resource the force_destroy field is set to be
true so that the bucket will be destroyed along with the contents. 
