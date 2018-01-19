# Outrigger Service Base (Light)

> This is an Alpine-based image that has had the S6-overlay init system and confd added to it.

[![](https://images.microbadger.com/badges/version/outrigger/servicebaselight.svg)](https://microbadger.com/images/outrigger/servicebaselight "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/outrigger/servicebaselight.svg)](https://microbadger.com/images/outrigger/servicebaselight "Get your own image badge on microbadger.com")

Outrigger Service Base (Light) creates a basic, Alpine-based image for streamlined
services that do not need the full environment of a rich OS. For those that do,
see [outrigger/servicebase](https://hub.docker.com/r/outrigger/servicebase).

This image includes BASH and glibc so that Go-based Linux binaries will run.
This image is only ~8MB when compared to the 100+MB of servicebase.

For more documentation on how Outrigger images are constructed and how to work
with them, please [see the documentation](http://docs.outrigger.sh/en/latest/).

## Features

### S6 Init System

All images derived from Service Base (Light) use the [S6 init system](https://github.com/just-containers/s6-overlay)
for more sophisticated process management.

## Security Reports

Please email outrigger@phase2technology.com with security concerns.

## Maintainers

[![Phase2 Logo](https://s3.amazonaws.com/phase2.public/logos/phase2-logo.png)](https://www.phase2technology.com)
