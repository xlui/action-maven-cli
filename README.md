# GitHub Action for the Maven CLI with JDK 11

The [origin project](https://github.com/LucaFeger/action-maven-cli) creates a Maven action with only JDK 8. But I'm writing java with JDK 11 and in the short future I'll keep using JDK 11. So I have forked the origin repository and add support for JDK 11.

The GitHub Action for [Maven](https://maven.apache.org/) wraps the Maven CLI to enable Maven commands to be run. This can be used to run every Maven Command.

## Usage

```
action "package" {
  uses = "xlui/action-maven-cli@master"
  args = "clean install"
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE.md).
