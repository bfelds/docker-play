FROM node:latest

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

ADD . /opt/app/
EXPOSE 3000
CMD ["node", "/opt/app/bin/www"]
