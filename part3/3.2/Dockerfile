FROM docker:latest

WORKDIR /builder

RUN apk add bash git
RUN bash

COPY builder.sh .
RUN chmod +x builder.sh

ENTRYPOINT ["/builder/builder.sh"]
