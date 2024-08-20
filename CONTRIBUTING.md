# Contributing

First off, thank you for considering contributing to this project! Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

## Table of Contents

- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Features](#suggesting-features)
  - [Submitting Pull Requests](#submitting-pull-requests)
- [Code of Conduct](#code-of-conduct)
- [Style Guides](#style-guides)
  - [Git Commit Messages](#git-commit-messages)
  - [Code Style](#code-style)
- [License](#license)

## Getting Started

### Fork and Clone the Repository

1. **Fork** the repository to your own GitHub account by clicking the "Fork" button on the top right of the repository page.
2. **Clone** the forked repository to your local machine:

    ```bash
    git clone https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules.git
    ```

3. **Navigate** to the cloned repository's directory:

    ```bash
    cd terraform-provider-for-elasticsearch-reusable-modules
    ```

4. **Add the original repository as a remote** so you can sync your fork with the upstream repository:

    ```bash
    git remote add upstream https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules.git
    ```

### Setting Up Your Environment

Follow the project-specific setup instructions provided in the repository's README.md file to get the project running on your local machine.

## How to Contribute

### Reporting Bugs

If you find a bug, please report it by [opening an issue](https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules/issues). Include details such as:

- A clear and descriptive title
- Steps to reproduce the bug
- Expected and actual results
- Relevant logs or screenshots

### Suggesting Features

We welcome suggestions for new features! Please submit your ideas by [opening an issue](https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules/issues) and providing:

- A clear and descriptive title
- A detailed explanation of the feature
- Why you believe this feature would be beneficial
- Any relevant examples or use cases

### Submitting Pull Requests

If you'd like to implement a new feature or fix a bug, please follow these steps:

1. **Create a new branch** from the `main` branch:

    ```bash
    git checkout -b feature/your-feature-name
    ```

2. **Make your changes** on the new branch. Ensure your code follows the project's [style guides](#style-guides).

3. **Commit your changes** with a clear and descriptive message:

    ```bash
    git commit -m "Add feature: your-feature-name"
    ```

4. **Push your branch** to your forked repository:

    ```bash
    git push origin feature/your-feature-name
    ```

5. **Open a Pull Request** in the main repository:

    - Go to the original repository and you'll see a prompt to open a Pull Request from your newly pushed branch.
    - Ensure your Pull Request includes a clear description of your changes and links to any relevant issues.

6. **Respond to Feedback**: Be ready to respond to any feedback or requests for changes from the maintainers.

### Guidelines

- **Keep your code clean** and **well-documented**.
- Follow the project’s [code style](#code-style) and [commit message conventions](#git-commit-messages).
- Ensure your code passes any existing tests and consider adding new tests if applicable.

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project, you agree to abide by its terms.

## Style Guides

### Git Commit Messages

- **Use the imperative mood** in your commit messages (e.g., "Fix bug" instead of "Fixed bug").
- **Keep your commits small** and focused. Each commit should contain a logical change.
- **Reference issues** in your commit messages where relevant (e.g., "Fix #1234").

### Code Style

- Follow the language-specific style guides. For example:
  - **Python**: PEP 8
  - **JavaScript**: Airbnb JavaScript Style Guide
- Ensure your code is **linted** and **formatted** according to the project guidelines.
- **Write tests** where applicable, and ensure all tests pass before submitting a Pull Request.

## License

By contributing to **[Project Name]**, you agree that your contributions will be licensed under the [MIT License](LICENSE) included in the repository.

---

Thank you for contributing to **[Project Name]**! Your efforts help improve the project for everyone.