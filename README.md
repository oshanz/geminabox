
1. create a persistent volumes
```bash
docker volume create geminabox_data
docker volume create caddy_data
```

2. add entry to the hosts file
```bash
sudo vi /etc/hosts
127.0.0.1 rubygems.org
```

3. build and run
```bash
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up
```