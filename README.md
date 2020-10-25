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
      uses: xlui/action-maven-cli@master
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

## How to work with OpenJDK 8 or OpenJDK 15

By default the highest OpenJDK version supported is 11. And If you want to work with OpenJDK 8 or OpenJDK 15, just change the branch of this repo.

For OpenJDK 8:

```yml
uses: xlui/action-maven-cli@jdk8
```

For OpenJDK 11(alternative `master`):

```yml
uses: xlui/action-maven-cli@jdk11
```

For OpenJDK 14:

```yml
uses: xlui/action-maven-cli@jdk14
```

For OpenJDK 15:

```yml
uses: xlui/action-maven-cli@jdk15
```

Note that OpenJDK 15 is not a LTS release, the branch `jdk15` will be deleted when the [upstream](https://hub.docker.com/_/maven) is deleted. 

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).
