# ffmd Bind9 Image

> Bind9 container image with configuration for the ffmd zone

## Releases

A change to the zone file triggers the following actions:
* Generating a new serial number.
* Building a Docker image and pushing it to DockerHub.
* Creating a GitHub release.

Please do not change the serial number, as this is done automatically
on changes to the zone file.

**Version tags** follow the serial numbers, e.g. `v2022060801`.
The version will be the tag for the docker image.

## Deploy

### with Docker

```bash
docker run --rm -it -p 127.0.0.1:53:53/udp ffmd/bind9-ffmd:versiontag
```

Please note that currently there is no `latest` image.

### Production

The production image is deployed using [Ansible](https://github.com/FreifunkMD/backend-ffmd) via [backend-ffmd](https://github.com/FreifunkMD/backend-ffmd).
