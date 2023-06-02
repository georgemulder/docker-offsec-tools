FROM ubuntu:latest
ENV LANG=C.UTF-8
WORKDIR /
COPY install.sh /
RUN bash /install.sh

LABEL maintainer="georgemulder" \
	version="0.0.1" \
	url="https://hub.docker.com/r/georgemulder/sliver" \
	source="https://github.com/georgemulder/sliver"

EXPOSE 31337/tcp
EXPOSE 8080/tcp
EXPOSE 80/tcp
EXPOSE 443/tcp

HEALTHCHECK --interval=60s --start-period=300s --timeout=10s \
	CMD /healthcheck.sh || exit 1
ENTRYPOINT [ "/run.sh" ]
