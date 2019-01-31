# GitHub Action for the Maven CLI with JDK 8

The GitHub Action for [Maven](https://maven.apache.org/) wraps the Maven CLI with JDK 8 to enable Maven commands to be run. This can be used to run every Maven Command.

## Usage

```
action "package" {
  uses = "xlui/action-maven-cli/jdk8@master"
  args = "clean package"
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).
