# Base on the Fedora 20 image
FROM mattdm/fedora-small:latest

MAINTAINER Marek Goldmann mgoldman@redhat.com

# Update the system
RUN yum -y update

# Install WildFly
RUN yum -y install wildfly

# Upgrade hibernate (still in updates-testing)
RUN yum -y update hibernate* --enablerepo updates-testing

# Run WildFly after container boot
ENTRYPOINT /usr/share/wildfly/bin/standalone.sh -b 0.0.0.0
