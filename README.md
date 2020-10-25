# Maven CLI For GitHub Actions

The Maven CLI For GitHub Actions wraps the maven cli to enable maven commands to be runned inner GitHub Actions. You can use all the maven commands to do whatever you want.

## Usage

```yml
name: Run maven test on push

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: 1. Checkout code
      uses: actions/checkout@v2

    - name: 2. Run maven test
      uses: xlui/action-maven-cli
      with:
        lifecycle: 'clean package test'
```

You can specify any maven lifecycle at the last part of the file.

In the above example we customize a lifecycle `clean package test`, the real command GitHub Actions run is:

```bash
#!/bin/sh -l

set -e

echo "==========Starting Maven Commands=========="

sh -c "mvn clean package test"

echo "==========Finished Maven Commands=========="
```

Have you noticed the conversion?

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).
