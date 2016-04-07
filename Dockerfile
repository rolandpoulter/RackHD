# Copyright 2016, EMC, Inc.

FROM mhart/alpine-node:4
VOLUME [ "/opt/monorail" ]
COPY . /RackHD/on-core/
WORKDIR /RackHD
RUN apk add --update git \
  && cd /RackHD \
  && npm install
  && cd /RackHD/on-core
  && npm install --production --ignore-scripts
  &&
CMD npm start
