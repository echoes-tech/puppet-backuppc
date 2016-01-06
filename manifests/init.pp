class backuppc (
  $manage_firewall           = $backuppc::params::manage_firewall,
  $package_ensure            = $backuppc::params::package_ensure,
  $package_name              = $backuppc::params::package_name,
  $service_enable            = $backuppc::params::service_enable,
  $service_ensure            = $backuppc::params::service_ensure,
  $service_manage            = $backuppc::params::service_manage,
  $service_name              = $backuppc::params::service_name,
) inherits backuppc::params {
  validate_bool($manage_firewall)
  validate_string($package_ensure)
  validate_string($package_name)
  validate_bool($service_enable)
  validate_string($service_ensure)
  validate_bool($service_manage)
  validate_string($service_name)

  anchor { "${module_name}::begin": } ->
  class { "${module_name}::install": } ->
  class { "${module_name}::config": } ~>
  class { "${module_name}::service": } ->
  anchor { "${module_name}::end": }
}
