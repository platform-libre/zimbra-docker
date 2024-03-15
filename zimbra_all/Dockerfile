#<one line to give the program's name and a brief idea of what it does.>
#    Copyright (C) 2024 Platform Libre
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

#################################################################
# Dockerfile to build Zimbra 10 (built by Platform Libre) container images
# Based on Rocky Linux 8
#################################################################
FROM rockylinux/rockylinux:8
MAINTAINER Chinthaka Deshapriya <ceeedevops@gmail.com>

RUN dnf -y update && dnf -y install \
  perl \
  glibc-langpack-en \
  net-tools \
  openssh-clients \
  bind-utils \
  rsyslog \
  nmap-ncat \
  which \
  wget

RUN ln -s -f /usr/share/zoneinfo/Asia/Colombo /etc/localtime

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

VOLUME ["/opt/zimbra"]

EXPOSE 25 80 465 587 110 143 993 995 443 3443 9071

COPY opt /opt/

CMD ["/bin/bash", "/opt/build.sh", "-d"]
