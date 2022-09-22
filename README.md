
1. create a persistent volumes
```bash
docker volume create geminabox_data
docker volume create caddy_data
```

2. build and run
```bash
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up
```

3. add entry to the vm hosts file
```bash
ssh ubuntu
sudo vi /etc/hosts
192.168.69.1 rubygems.org
```

## without ssl

1. change the Gemfile source from https to http
```ruby
#source 'http://rubygems.org'
source 'http://rubygems.org'
```

2. now do a bundle install

### ssl flow - error prone

1. install root certificate
- copy from the container
```bash
docker cp geminabox-caddy-1:/data/caddy/pki/authorities/local/root.crt ~/Desktop/
```
- Mac install
https://www.eduhk.hk/ocio/content/faq-how-add-root-certificate-mac-os-x

- install to ubuntu vm
```bash
sudo scp ~/Desktop/root.crt ubuntu:/usr/local/share/ca-certificates/
ssh ubuntu
sudo update-ca-certificates
```

