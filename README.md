# x11docker-java-devenv

Java development environment for x11docker

## Docker Hub

<https://hub.docker.com/r/gavrilovegor519/x11docker-java-devenv>

## Starting up

```shell
podman build . -t gavrilovegor519/x11docker-java-devenv
x11docker -d -I -- --cap-add=SYS_CHROOT -- gavrilovegor519/x11docker-java-devenv
```
