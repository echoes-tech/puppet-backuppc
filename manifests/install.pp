# Private class
class backuppc::install inherits backuppc {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  package { $backuppc::package_name:
    ensure => $backuppc::package_ensure,
    alias  => 'backuppc',
  }
}
