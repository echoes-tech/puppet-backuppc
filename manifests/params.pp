# == Class: backuppc::params
#
# This is a container class with default parameters for backuppc classes.
class backuppc::params {
  $manage_firewall = false
  $package_ensure  = 'present'
  $package_name    = 'backuppc'
  $service_enable  = true
  $service_ensure  = 'running'
  $service_manage  = true
  $service_name    = 'backuppc'
}
