#!/usr/bin/env bash

curl -n -X DELETE https://api.heroku.com/apps/jarves-demo/dynos/web \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3" \
  -H "Authorization: Bearer $HEROKU_API_TOKEN"
