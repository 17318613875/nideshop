FROM mhart/alpine-node:8.9.4

WORKDIR /animaris

COPY app /animaris/app
# COPY src /animaris/src
COPY www /animaris/www
COPY production.js /animaris/production.js

# COPY package.json /animaris/package.json
# RUN npm i --registry=https://registry.npm.taobao.org
# RUN npm run compile

ENV DOCKER=true
EXPOSE 8360
CMD [ "node", "/animaris/production.js" ]