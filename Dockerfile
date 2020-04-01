FROM alpine:3.11.5
RUN apk -U --no-cache add curl
ENV INSTALL_FLEET_VERSION v0.1.0-rc6
RUN curl -sfL https://raw.githubusercontent.com/rancher/fleet/master/install.sh | INSTALL_FLEET_VERSION=${INSTALL_FLEET_VERSION} sh -
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]