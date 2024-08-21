# Opinionated Terraform Provider for Elasticsearch Modules

Welcome to an **Opinionated Terraform Provider for Elasticsearch Modules** project! The goal here is to take the terraform modules provided by Elasticsearch and extend them with configuration settings for Elasticsearch that provide a "Ready 2 Go" deployment simply by turning flags on and off in terraform depending on what your use case is for Elasticsearch. Hopefully this saves someone some time and maybe some pain, depending on what feature you are enabling.

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

- **Opinonated Configurations**: Not all settings need to be set, but some are almost always a good idea. I have inserted the ones i think are good to have out of the box.
- **Enablement via flags**: Using something like APM? Pass in a terraform flag and get all the @custom component templates, lifecycle policies etc out the box.
- **Customizable**: Everything is variabilized.

## Getting Started

### Prerequisites

Before using this module, you need to have the following tools installed:

- [Terraform](https://www.terraform.io/downloads.html) v1.0.0 or later
- [Elastic Stack Provider](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs)
- [Git](https://git-scm.com/)

### Installation

Clone this repository to your local machine:

```bash
git clone https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules.git
cd terraform-provider-for-elasticsearch-reusable-modules
```

### Quick Start

1. Initialize Terraform:

    ```bash
    terraform init
    ```

2. Review and modify the `example/main.tf` and `example/variables.tf` files in each of the modules to fit your environment or leave it as is and use variables to override defaults.

3. Reference each module either from within your repo or as a remote module :

    ```bash
    module "example" {
      source = "git::https://github.com/your-username/terraform-[module-name].git"
    }
    ```
4. 
    ```bash
    terraform apply
    ```

5. Confirm the apply step, and Terraform will begin provisioning your Elasticsearch cluster with the selected modules.

## Module Structure

This Terraform module is organized as follows:

```
├─ src/
├── modules/
│   ├── cluster_settings/
│   ├── component_templates/
│   ├── ilm_templates/
│   └── ...
├── examples/
│   └── basic/
│       └── main.tf
└── README.md
```

- **modules/**: Contains individual sub-modules, each responsible for a different aspect of the Elasticsearch deployment.
- **examples/**: Example configurations to help you get started quickly.
- **README.md**: You're reading it now!

## Usage

### Basic Example

Here is a simple example of how to use this module to deploy a basic Elasticsearch cluster:

```hcl
module "cluster_settings" {
  source = "../modules/cluster_settings"

  auto_create_index      = "true"
  watermark_size         = "large_cluster"
}
```

### Advanced Configuration

Almost everything is variablised and can be overridden.

For a complete list of variables and their descriptions, refer to the [variables.tf](modules/.../variables.tf) file.

## Outputs

At present there aren't any dependencies between modules so there are no outputs at the moment.

If this changes then see the [outputs.tf](modules/.../outputs.tf) file.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request. For more details on contributing, see the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions, feel free to reach out via GitHub issues or contact the project maintainer:

- **Jethro Pickering**
- **Email:** jethro@nosqlskills.com
- **GitHub:** [nosqlskills](https://github.com/nosqlskills)

---

Thank you for using my modules! Happy Terraforming and Elasticsearching! 🎉
