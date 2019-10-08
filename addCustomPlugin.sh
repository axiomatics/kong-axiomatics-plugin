#!/bin/sh
PLUGINS="bundled"
# mkdir tmp
# cd tmp
# git clone https://github.com/iggbom/kong-axiomatics-plugin
docker cp ./kong/plugins/kong-axiomatics-plugin/  kong:/usr/local/share/lua/5.1/kong/plugins
docker exec -ti kong /bin/sh -c "KONG_PLUGINS='bundled,kong-axiomatics-plugin' kong reload"
# cd ..
# rm -Rf tmp
