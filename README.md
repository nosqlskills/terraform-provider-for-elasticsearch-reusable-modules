# Modular Elasticsearch Deployment with Terraform

Welcome to the **Modular Elasticsearch Deployment** project! This repository provides a flexible and reusable Terraform module designed to streamline the deployment of Elasticsearch clusters on various cloud platforms. By adopting a modular approach, this project aims to simplify the process of managing Elasticsearch infrastructure, making it easier to customize, scale, and maintain Elasticsearch deployments.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Quick Start](#quick-start)
- [Module Structure](#module-structure)
- [Usage](#usage)
  - [Basic Example](#basic-example)
  - [Advanced Configuration](#advanced-configuration)
- [Variables](#variables)
- [Outputs](#outputs)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- **Modular Design**: The module is broken down into several sub-modules that can be used independently or together, providing flexibility in how you deploy Elasticsearch.
- **Multi-Cloud Support**: Compatible with major cloud providers like AWS, GCP, and Azure.
- **Scalability**: Easily scale your Elasticsearch clusters by modifying simple configuration parameters.
- **Customizable**: Wide range of configurable options including instance types, node count, security settings, and more.
- **Secure by Default**: Best practices for security are incorporated, including VPC support, security groups, and SSL/TLS.
- **Automated**: Simplifies the deployment and management of Elasticsearch clusters with minimal manual intervention.

## Getting Started

### Prerequisites

Before using this module, you need to have the following tools installed:

- [Terraform](https://www.terraform.io/downloads.html) v1.0.0 or later
- [AWS CLI](https://aws.amazon.com/cli/) or equivalent CLI tool for your cloud provider
- [Git](https://git-scm.com/)

### Installation

Clone this repository to your local machine:

```bash
git clone https://github.com/your-username/modular-elasticsearch-terraform.git
cd modular-elasticsearch-terraform
```

### Quick Start

1. Initialize Terraform:

    ```bash
    terraform init
    ```

2. Review and modify the `example/main.tf` file to fit your environment.

3. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

4. Confirm the apply step, and Terraform will begin provisioning your Elasticsearch cluster.

## Module Structure

This Terraform module is organized as follows:

```
├── modules/
│   ├── vpc/
│   ├── security_group/
│   ├── elasticsearch/
│   └── ...
├── examples/
│   └── basic/
│       └── main.tf
└── README.md
```

- **modules/**: Contains individual sub-modules, each responsible for a different aspect of the Elasticsearch deployment (e.g., VPC, security groups, Elasticsearch nodes).
- **examples/**: Example configurations to help you get started quickly.
- **README.md**: You're reading it now!

## Usage

### Basic Example

Here is a simple example of how to use this module to deploy a basic Elasticsearch cluster:

```hcl
module "elasticsearch" {
  source = "../modules/elasticsearch"

  cluster_name           = "my-es-cluster"
  node_count             = 3
  instance_type          = "t3.medium"
  vpc_id                 = "vpc-xxxxxx"
  subnet_ids             = ["subnet-xxxxxx"]
  security_group_ids     = ["sg-xxxxxx"]
}
```

### Advanced Configuration

For advanced use cases, you can configure the module to deploy multiple node types, customize storage settings, or integrate with other services like Kibana or Logstash. See the [examples](examples/) directory for more details.

## Variables

The module accepts a wide range of variables to customize the deployment. Below are some key variables:

- **cluster_name** (string) - The name of the Elasticsearch cluster.
- **node_count** (number) - The number of nodes in the cluster.
- **instance_type** (string) - The EC2 instance type for the Elasticsearch nodes.
- **vpc_id** (string) - The ID of the VPC where the cluster will be deployed.
- **subnet_ids** (list) - A list of subnet IDs for the cluster nodes.
- **security_group_ids** (list) - A list of security group IDs to attach to the cluster nodes.

For a complete list of variables and their descriptions, refer to the [variables.tf](modules/elasticsearch/variables.tf) file.

## Outputs

This module provides the following outputs:

- **cluster_endpoint** - The endpoint URL of the Elasticsearch cluster.
- **node_security_group_id** - The ID of the security group applied to Elasticsearch nodes.
- **cluster_arn** - The Amazon Resource Name (ARN) of the Elasticsearch domain.

For more details, see the [outputs.tf](modules/elasticsearch/outputs.tf) file.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request. For more details on contributing, see the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions, feel free to reach out via GitHub issues or contact the project maintainer:

- **Your Name**
- **Email:** your.email@example.com
- **GitHub:** [your-username](https://github.com/your-username)

---

Thank you for using the Modular Elasticsearch Deployment project! Happy Terraforming! 🎉