# ffmd Bind9 Image

> Bind9 container image with configuration for the ffmd zone

## Releases

Releases are created automatically based on the version.

**Version tags** follow the serial numbers, e.g. `v2022060801`.
The serial number will be the tag for the docker image.

## Deploy

### with Docker

```bash
docker run --rm -it -p 127.0.0.1:53:53/udp ffmd/bind9-ffmd:latest
```

### Production

The production image is deployed using [Ansible](https://github.com/FreifunkMD/backend-ffmd) via [backend-ffmd](https://github.com/FreifunkMD/backend-ffmd).


