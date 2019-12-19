FROM python:3.7-alpine
LABEL exposed.command.single=safety
VOLUME ["/results"]
VOLUME ["/src"]

RUN pip install safety==1.8.5

COPY safety.sh /
WORKDIR /src
ENTRYPOINT ["/safety.sh"]



