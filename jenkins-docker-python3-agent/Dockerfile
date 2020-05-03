FROM ranmarkovich/agent-pc:v1
USER root
RUN apk add --update docker openrc
RUN rc-update add docker boot

RUN addgroup jenkins docker

CMD dockerd