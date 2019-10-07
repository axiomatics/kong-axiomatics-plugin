#/bin/sh
curl -i -X POST \
  --url http://localhost:8001/services/ \
  --data 'name=record-service' \
  --data 'url=https://my-json-server.typicode.com/iggbom/data/record'

curl -i -X POST \
  --url http://localhost:8001/services/record-service/routes \
  --data 'paths[]=/record'

curl -i -X POST \
  --url http://localhost:8001/services/record-service/plugins \
  --data 'name=kong-axiomatics-plugin' \
  --data 'config.basic_http_auth=true' \
  --data 'config.pdp_url=https://aps:8443/asm-pdp/authorize' \
  --data 'config.pdp_username=pep-account' \
  --data 'config.pdp_password=kong' \
  --data 'config.claims_to_include=axiomatics.demo.user.userId'
