#Builder image

This directory holds an example for a builder image.
It can be used as follows:

```bash
docker build -f Dockerfile.build -t builder . && docker run builder | docker build -t application -
docker run application
```