# av-gov-cloud-setup

This Terraform configuration sets up an S3 bucket with a website configuration and outputs the website endpoint. 
It also uses a remote backend to store the Terraform state in an S3 bucket.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- An AWS account with necessary permissions to create S3 buckets and associated resources.

## Configuration

1. Clone this repository to your local machine:

```sh
git clone <repository_url>
```

2. Navigate to the directory containing the Terraform configuration:
```sh
cd <repository_directory>
```
Customize the variables.tf file to set your desired configurations, such as the bucket_name.


Initialize the Terraform configuration:
```sh
terraform init
```
Generate a Terraform plan to preview the changes before applying:

```sh
terraform plan -out=tfplan
```
Review the plan to ensure it matches your expectations.

Apply the Terraform plan:
```sh
terraform apply tfplan
```
After applying the plan, the website endpoint will be outputted. To retrieve it, run:
```sh
terraform output s3_website_endpoint
```
To access the website using your custom domain, create a CNAME record that maps your domain to the S3 bucket's website endpoint. 
For example, if your domain is example.com and the website endpoint is http://example-bucket.s3-website-us-west-2.amazonaws.com, 
create a CNAME record for www.example.com pointing to example-bucket.s3-website-us-west-2.amazonaws.com.