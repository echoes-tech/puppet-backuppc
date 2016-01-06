# Private class
class backuppc::service inherits backuppc {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  if $backuppc::service_manage {
    service { 'backuppc':
      ensure     => $backuppc::service_ensure,
      enable     => $backuppc::service_enable,
      name       => $backuppc::service_name,
      hasrestart => true,
      hasstatus  => $backuppc::service_hasstatus,
    }
  }
}
