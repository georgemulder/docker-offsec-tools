FROM ubuntu:latest
ENV LANG=C.UTF-8
WORKDIR /
COPY install.sh /
RUN bash /install.sh

LABEL maintainer="georgemulder" \
	version="0.0.2" \
	url="https://hub.docker.com/r/georgemulder/sharpc2" \
	source="https://github.com/georgemulder/docker-offsec-tools"

EXPOSE 50050/tcp
EXPOSE 80/tcp
EXPOSE 443/tcp

RUN --mount=type=secret,id=tspwd \
	sed -i "s/PLACEHOLDER/$(cat /run/secrets/tspwd)/" /run.sh

HEALTHCHECK --interval=60s --start-period=300s --timeout=10s \
	CMD /healthcheck.sh || exit 1
ENTRYPOINT [ "/run.sh" ]
