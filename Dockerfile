FROM ubuntu:20.04
LABEL version="1"
LABEL description="Container for petergeneric's Unifi-Protect-Remux and dependencies"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y wget \
 && rm -rf /var/lib/apt/lists/*

COPY remux-amd64 /bin/
COPY ffmpeg /bin/
COPY remuxscript.sh /bin/


RUN wget https://archive.org/download/ubnt_ubvinfo/ubnt_ubvinfo
COPY ubnt_ubvinfo /bin/

ENTRYPOINT ["remuxscript.sh"]
