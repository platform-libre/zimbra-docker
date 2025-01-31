### How to build a new Docker image
##### Firstly, of course, install Docker and setup to manage Docker as a non-root user
See: https://docs.docker.com/engine/install/

##### Pull the latest Rocky Linux based docker image
```bash
docker pull rockylinux/rockylinux:8
```
##### Checkout this git repo

```bash
git clone https://github.com/platform-libre/zimbra-docker.git && cd zimbra-docker/zimbra_all
```

##### Download the latest Zimbra 10 (built by Platform Libre)

```bash
$ wget -O opt/zimbra-install/zcs-10.0.6_GA_0124.RHEL8_latest_platformlibre.tgz \
https://download.platformlibre.com/zcs-10.0.6_GA_0124.RHEL8_latest_platformlibre.tgz 
```
##### Extract Zimbra  Installer

```bash
tar xzvf  opt/zimbra-install/zcs-10.0.6_GA_0124.RHEL8_latest_platformlibre.tgz -C opt/zimbra-install
```

##### Rename Zimbra Installer Directory

```bash
mv opt/zimbra-install/zcs*   opt/zimbra-install/zimbra-install/
```

##### Build Zimbra a new docker image
```bash
$ docker build --rm -t platformlibre/zimbra_all .
```
