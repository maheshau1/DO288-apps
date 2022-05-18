#!/bin/sh


oc new-app --template test-common/php-mysql-ephemeral \
  -p NAME=quotesapi \
  -p APPLICATION_DOMAIN=quote-test-build-template.itzroks-662002o51b-g95mp5-6ccd7f378ae819553d37d5f2ee142bd6-0000.au-syd.containers.appdomain.cloud\
  -p SOURCE_REPOSITORY_URL=https://github.com/maheshau1/DO288-apps \
  -p CONTEXT_DIR=quotes \
  -p DATABASE_SERVICE_NAME=quotesdb \
  -p DATABASE_USER=user1 \
  -p DATABASE_PASSWORD=mypa55 \
  --name quotes

