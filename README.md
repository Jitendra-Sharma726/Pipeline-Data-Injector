# Pipeline-Data-Injector

# Pipeline Data Injector with Terraform and AWS DynamoDB

## Project Overview

Designed and implemented a cloud-native data management solution using Terraform and AWS DynamoDB to automate the provisioning of a scalable NoSQL inventory database. The project demonstrates advanced DynamoDB capabilities by configuring multiple Global Secondary Indexes (GSIs) to support efficient querying across alternate attributes while maintaining a flexible schemaless architecture.

The solution provisions a DynamoDB table, creates three GSIs for optimized access patterns, injects inventory data records through Infrastructure as Code, and exposes database metadata through Terraform outputs. By leveraging sparse indexing and dynamic resource references, the implementation enables high-performance querying and streamlined infrastructure management.

## Responsibilities

* Designed and provisioned DynamoDB infrastructure using Terraform.
* Configured primary partition keys and Global Secondary Indexes (GSIs).
* Implemented alternate query paths for inventory data retrieval.
* Created and managed DynamoDB table items using Terraform resources.
* Leveraged `jsonencode()` for structured data insertion.
* Implemented Terraform outputs to expose database resource metadata.
* Executed infrastructure initialization, planning, and deployment workflows.
* Applied Infrastructure as Code best practices for repeatable deployments.

## Technologies Used

* Terraform
* AWS DynamoDB
* Infrastructure as Code (IaC)
* NoSQL Databases
* AWS Cloud Platform

## Key Features

* Automated DynamoDB table provisioning.
* Three Global Secondary Indexes (GSIs) for optimized query performance.
* Sparse index implementation for efficient storage and retrieval.
* Automated inventory data ingestion using Terraform.
* Dynamic resource references and dependency management.
* ARN extraction through Terraform outputs.
* Repeatable, version-controlled infrastructure deployments.

## Business Value

This project demonstrates how Infrastructure as Code can automate the deployment of scalable NoSQL databases while optimizing query performance through Global Secondary Indexes. The solution reduces manual database configuration, improves operational efficiency, and enables rapid deployment of data-driven applications with predictable and maintainable infrastructure.

## Outcome

Successfully provisioned a DynamoDB inventory database with multiple Global Secondary Indexes, uploaded inventory records through Terraform, and exposed resource metadata via outputs, demonstrating scalable data management, optimized querying, and Infrastructure as Code best practices.
