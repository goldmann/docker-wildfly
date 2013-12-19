# Base on the Fedora 20 image
FROM mattdm/fedora-small:latest

MAINTAINER Marek Goldmann mgoldman@redhat.com

# Update the system
RUN yum -y update

# Install WildFly
RUN yum -y install wildfly

# Run WildFly after container boot
ENTRYPOINT /usr/share/wildfly/bin/standalone.sh -b 0.0.0.0
