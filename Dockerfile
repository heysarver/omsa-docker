FROM rockylinux/rockylinux:latest

RUN dnf -y install wget procps-ng iproute gcc kmod curl

RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

RUN dnf -y install supervisor

RUN wget -q -O - https://linux.dell.com/repo/hardware/dsu/bootstrap.cgi | bash

RUN dnf -y install dell-system-update srvadmin-all

RUN dnf clean all

# Expose necessary ports
EXPOSE 1311

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

# HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
#   CMD curl -f http://localhost:1311/ || exit 1
