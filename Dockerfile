FROM ubuntu:20.04
LABEL version="1"
LABEL description="Container for petergeneric's Unifi-Protect-Remux and dependencies"
ARG DEBIAN_FRONTEND=noninteractive

COPY remux-amd64 /bin/
COPY ffmpeg /bin/
copy remuxscript.sh /bin/

ENTRYPOINT ["remuxscript.sh"]
