# Private class
class backuppc::config inherits backuppc {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }
  
}
