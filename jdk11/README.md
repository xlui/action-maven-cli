# GitHub Action for the Maven CLI with JDK 11

The GitHub Action for [Maven](https://maven.apache.org/) wraps the Maven CLI with JDK 11 to enable Maven commands to be run. This can be used to run every Maven Command.

## Usage

The normalised usage or this GitHub Action is the following code:

```
action "package" {
  uses = "xlui/action-maven-cli/jdk11@master"
  args = "clean package"
}
```

But in order to keep forward-compatibility, you can also use this GitHub Action in the following way:

```
action "package" {
  uses = "xlui/action-maven-cli@master"
  args = "clean package"
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).
