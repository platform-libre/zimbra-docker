### How to build a new Docker image
##### Firstly, of course, install Docker and setup to manage Docker as a non-root user
See: https://docs.docker.com/engine/install/

##### Pull the latest Rocky Linux based docker image
```bash
$ docker pull rockylinux/rockylinux:8.9-minimal
```
##### Checkout this git repo

```bash
* $ git clone https://github.com/platform-libre/zimbra-docker.git && cd zimbra-docker/zimbra_all
```

##### Build Zimbra a new docker image
```bash
$ docker build --rm -t iwayvietnam/zimbra_all .
```
