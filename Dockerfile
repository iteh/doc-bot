# DOCKER-VERSION	1.3.2

FROM nhoag/nodejs
MAINTAINER Edmund Haselwanter, ehaselwanter@iteh.at

ENV BOTVERSION 0.0.5
ENV BOTDIR /opt/bot-${BOTVERSION}
ENV BOTARCHIVE https://github.com/ehaselwanter/bot/archive/${BOTVERSION}.tar.gz

RUN wget -q -O - ${BOTARCHIVE} | tar xz -C /opt

WORKDIR ${BOTDIR}

RUN npm install
