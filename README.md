# Temp dev env for govCMS Parks development

## Install Ansible, VirtualBox and Vagrant

- Ansible: http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-pip
- VirtualBox: https://www.virtualbox.org/wiki/Downloads
- Vagrant: https://www.vagrantup.com/downloads.html

## Hostname resolution

Add the following to your hosts file `/etc/hosts`

```bash
sudo vim /etc/hosts
```

```
192.168.33.33 whitesite.local
192.168.33.33 www.whitesite.local
192.168.33.33 adminer.whitesite.local
192.168.33.33 xhprof.whitesite.local
192.168.33.33 pimpmylog.whitesite.local
192.168.33.33 dashboard.whitesite.local
```

## Build the VM

```bash
cd vagrant
vagrant up
vagrant ssh
```

## Install some node stuff

```bash
sudo chown -R vagrant:vagrant ~/.npm*
npm install --global lerna
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
```

## Install UI Kit stuff

```bash
cd whitesite.local/docroot/sites/all/themes/govcms_parkes/uikit
npm install
yarn
npm run bootstrap
```
## Install govCMS with default content

http://whitesite.local/install.php

## Basic Drupal configuration

```bash
drush en -y govcms_parkes devel admin_menu
drush dis -y navbar
drush vset theme_default govcms_parkes
```

## I ran into issues at that point, I had to

- Copy packages from `node_modules/@gov.au` to `packages` manually
- Install `@gov.au/pancacke`
- Run `node_modules/.bin/pancake`