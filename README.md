# x11docker-java-devenv

Java development environment for x11docker

## Starting up

```shell
podman build . -t gavrilovegor519/x11docker-java-devenv
x11docker -d -I --cap-default -- --shm-size=1G -- gavrilovegor519/x11docker-java-devenv
```
