FROM nucleardreamer/air-docker:latest

LABEL NAME="e-pity"
LABEL VERSION="2016.0"

ENV DISPLAY=:0
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y xvfb wget

RUN wget -O /tmp/epity.air http://download.e-pity.pl/down/setup_e-pity2014.air
RUN bash -c "nohup Xvfb :0 -screen 0 666x666x16 > /dev/null 2>&1 &" && air-install -silent -eulaAccepted /tmp/epity.air

ENV HOME=/efile
VOLUME /efile

ENTRYPOINT ["/opt/e-pity/bin/e-pity"]