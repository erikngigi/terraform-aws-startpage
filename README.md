# Custom Startpage on AWS (S3 + Route 53) Terraform Module

## Overview

This Terraform module provisions a custom startpage hosted on Amazon S3 and accessible via a custom domain managed through Route 53. The module leverages the AWS provider to automate the setup of the S3 bucket, DNS records, and required policies for serving a static website securely over HTTPS.

## Features

- **S3 Bucket:** Creates an S3 bucket configured for static website hosting.
- **Route 53:** Manages DNS records for your custom domain to point to the S3 bucket.
- **SSL Certificate:** Optionally provisions an SSL certificate using AWS Certificate Manager (ACM) for HTTPS support.
- **Bucket Policies:** Sets up necessary bucket policies for public access to the website content.

## Requirements

- Terraform 1.0.0+
- AWS CLI configured with appropriate access
- A registered domain in Route 53

<!-- ## Usage -->

<!-- ```hcl -->
<!-- module "startpage" { -->
<!--   source             = "github.com/your-username/terraform-aws-startpage" -->
<!--   domain_name        = "example.com" -->
<!--   certificate_arn    = "arn:aws:acm:region:account:certificate/certificate-id"  # Optional -->
<!--   enable_https       = true  # Set to false if HTTPS is not required -->
<!--   website_index      = "index.html" -->
<!--   website_error      = "error.html" -->
<!-- } -->

<!-- provider "aws" { -->
<!--   region = "us-east-1" -->
<!-- } -->
<!-- ``` -->

<!-- ## Inputs -->

<!-- - `domain_name` (string): The custom domain name for the startpage. -->
<!-- - `certificate_arn` (string, optional): ARN of the ACM SSL certificate. -->
<!-- - `enable_https` (bool, optional): Flag to enable HTTPS. Default is `true`. -->
<!-- - `website_index` (string): The default index document (e.g., `index.html`). -->
<!-- - `website_error` (string): The error document (e.g., `error.html`). -->

<!-- ## Outputs -->

<!-- - `s3_bucket_name`: The name of the S3 bucket created. -->
<!-- - `website_url`: The URL of the startpage. -->
<!-- - `cloudfront_distribution_id`: The ID of the CloudFront distribution (if HTTPS is enabled). -->

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for details.

---

This README provides a basic outline for getting started with the module. Additional customization options and usage examples can be added as the module matures.
