FROM python:3.7-alpine
LABEL exposed.command.single=safety
VOLUME ["/results"]
VOLUME ["/src"]

RUN pip install safety==1.9.0

COPY safety.sh /
WORKDIR /src
ENTRYPOINT ["/safety.sh"]



