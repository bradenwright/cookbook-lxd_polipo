# lxd_polipo-cookbook

Setups up a Polipo Proxy on an LXD container.  Currently I am using it to speed up test kitchen runs, but once its setup and running (using kitchen-lxd_cli) it run can be used with any machine that has network access this container:

`lxc list proxy-ubuntu-1404`

## Supported Platforms

Ubuntu

## Attributes

## Usage


### lxd_polipo

1) Clone this project

`git clone https://github.com/bradenwright/cookbook-lxd_polipo`

2) Run bundle install

`bundle install`

3) Run test-kitchen to install and verify proxy

`bundle exec kitchen verify`

4) Add the following to .kitchen.yml file of any other recipe

```
provisioner:
  name: chef_zero
  http_proxy: http://10.0.3.5:8123
  https_proxy: https://10.0.3.5:8123
  chef_omnibus_url: http://www.chef.io/chef/install.sh
```

Polipo FYI)

A) To verify that Polipo is operational and being used you use its web server: 

[Polipo Home](http://10.0.3.5:8123/polipo/)

[Status Report](http://10.0.3.5:8123/polipo/status?)

[Known Servers](http://10.0.3.5:8123/polipo/servers?)


## Caching FYI

Working (as far as I can tell):
* Caching apt packages
* Caching chef install ( if chef_omnibus_url is specified, doesn't seem to cache when using default url which is https )

Not Working (as far as I can tell):
* Caching Rubygems
* Caching for Kitchen Verify ( ServerSpec gem installs doesn't seem to hit proxy either )

## Road Map

Not much will be done, but I'd like to update Rakefile, so an ip, default gateway can be passed in.  Then I'll update the .kitchen.yml file to use and environment variable.  So a polipo box can be easily installed on any network.  For now manually edit/override the .kitchen.yml file with your own .kitchen.local.yml

[Example](https://gist.github.com/fnichol/7551540) of getting ENV variables/ruby code in .kitchen.yml:

## License and Authors

Author:: Braden Wright (braden.m.wright@gmail.com)
