FROM node:16-alpine

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
