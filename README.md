# Test PyPI  Package

## Overview

_**test-pypi-package**_ is a sample package created to test the publishing process on the Python Package Index (PyPI).
This
package serves as an educational resource for developers, helping them understand the basic structure of a Python
package, the configuration of the setup.py file, and versioning guidelines.

[Read](https://medium.com/data-hackers/pypi-publicando-seu-primeiro-pacote-de7eb75db452)

This repository demonstrates the following:

- Setting up a Python development environment using Docker.
- Installing project dependencies.
- Building a Python package distribution.
- Uploading the package to PyPI (test server).

## Prerequisites

Ensure you have the following installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/) (required for dockerized development)
- Python 3: [Install Python 3](https://www.python.org/downloads/) (optional for local development)

## Installation

Clone the repository and navigate into the project directory:

```bash
git clone https://github.com/medeirosinacio/test-pypi-package.git
cd test-pypi-package
```

## Usage

### Start Playground Environment

To start a Python playground environment:

```bash
make playground
```

This command starts a Docker container with Python 3, mounts the project directory, and sets up necessary caches.

Install dependencies and prepare the package for testing:

```bash
make install
```

### Build Package

To build the package distribution:

```bash
make build
```

This command creates a source distribution and a wheel distribution in the `dist/` directory.

### Publish Package

To publish the package to PyPI:

```bash
make publish
```

Enter your Token PyPI credentials when prompted.

## GitHub Actions Workflow

This repository includes a GitHub Actions workflow for automating the release and publishing process. When a new release
is created and tagged, the workflow automatically:

* Updates the CHANGELOG.md with release notes.
* Updates the package version in setup.py.
* Commits and pushes changes to the repository.
* Builds and publishes the package to PyPI.

Refer to [workflows/ci-cd.yml](.github%2Fworkflows%2Fci-cd.yml) for more details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
