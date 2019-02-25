FROM node:10.15-alpine

RUN apk add --update dos2unix && \
    mkdir /websiteone-fe
WORKDIR /websiteone-fe
COPY . .
RUN dos2unix entrypoint.sh && \
    yarn 

ENTRYPOINT [ "./entrypoint.sh" ]