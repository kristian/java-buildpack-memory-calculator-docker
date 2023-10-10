# A [Distroless](https://github.com/GoogleContainerTools/distroless) Docker Image of the [CloudFoundry Java Buildpack Memory Calculator](https://github.com/cloudfoundry/java-buildpack-memory-calculator)

Available on Docker Hub [**kriskra/java-buildpack-memory-calculator**](https://hub.docker.com/r/kriskra/java-buildpack-memory-calculator).

**Disclaimer:** Whilst this Docker Image is [open source](https://github.com/kristian/java-buildpack-memory-calculator-docker) and minimalistic, I have no affiliation with CloudFoundry, nor the the [java-buildpack-memory-calculator](https://github.com/cloudfoundry/java-buildpack-memory-calculator) project or authors.

## Usage

Run like you would run the [CloudFoundry Java Buildpack Memory Calculator](https://github.com/cloudfoundry/java-buildpack-memory-calculator). Example:

```bash
docker run --rm kriskra/java-buildpack-memory-calculator --loaded-class-count 5000 --thread-count 100 --total-memory 8G
```

Resulting in a calculated JVM memory profile like:

```
-XX:MaxDirectMemorySize=10M -XX:MaxMetaspaceSize=41992K -XX:ReservedCodeCacheSize=240M -Xss1M -Xmx7988215K
```

## License

This Docker Image, similar to the [CloudFoundry Java Buildpack Memory Calculator](https://github.com/cloudfoundry/java-buildpack-memory-calculator) is Open Source software released under the [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0.html).