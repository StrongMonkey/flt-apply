FROM alpine:3.11.5
RUN apk -U --no-cache add curl
RUN curl -sfL https://raw.githubusercontent.com/rancher/fleet/master/install.sh | sh -
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
