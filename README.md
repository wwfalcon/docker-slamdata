[![](https://badge.imagelayers.io/aelmadho/slamdata:latest.svg)](https://imagelayers.io/?images=aelmadho/slamdata:latest 'Get your own badge on imagelayers.io')

# docker-slamdata
Docker resource for slamdata NoSQL/SQL+ data-analytics tool

# sample command
docker run --name mongodb -v /data/db:/data/db -d mongo:latest
docker run --name slamdata -p 4000:4000 -v /slamdata:/slamdata --link mongodb:mongodb -d aelmadho/slamdata:latest -c /slamdata/quasar-config.json -p 4000
