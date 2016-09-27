name 'httpd'
version '0.4.2'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Provides httpd_service, httpd_config, and httpd_module resources'
source_url 'https://github.com/chef-cookbooks/httpd'
issues_url 'https://github.com/chef-cookbooks/httpd/issues'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'compat_resource', '>= 12.14.6'

supports 'amazon'
supports 'redhat'
supports 'centos'
supports 'scientific'
supports 'oracle'
supports 'fedora'
supports 'debian'
supports 'ubuntu'
supports 'suse'
supports 'opensuse'
supports 'opensuseleap'
