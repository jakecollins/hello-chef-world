# This file is here to get rid of annoying SSL validation warning message that otherwise appears during provisioning when using Chef 11.12.0 or later.
# See http://stackoverflow.com/questions/22991561/chef-solo-ssl-warning-when-provisioning

Chef::Config.ssl_verify_mode = :verify_peer
