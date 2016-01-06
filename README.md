# backuppc

[![Build Status](https://travis-ci.org/echoes-tech/puppet-backuppc.svg?branch=master)]
(https://travis-ci.org/echoes-tech/puppet-backuppc)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with backuppc](#setup)
    * [Beginning with backuppc](#beginning-with-backuppc)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [Contributors](#contributors)

## Overview

Puppet module to manage BackupPC package and service.

## Module Description

This module installs [BackupPC](http://backuppc.sourceforge.net/) and it manages its service.

## Setup

### Beginning with backuppc

```puppet
include 'backuppc'
```

## Reference

### Classes

#### Public classes

* backuppc: Main class, includes all other classes.

#### Private classes

* backuppc::params: Sets parameter defaults per operating system.
* backuppc::install: Handles the packages.
* backuppc::config: Handles the configuration file.
* backuppc::service: Handles the service.
* backuppc::firewall: Handles the firewall configuration.

#### Parameters

The following parameters are available in the `::backuppc` class:

##### `package_ensure`

Tells Puppet whether the BackupPC package should be installed, and what version. Valid options: 'present', 'latest', or a specific version number. Default value: 'present'

##### `package_name`

Tells Puppet what BackupPC package to manage. Valid options: string. Default value: 'backuppc'

##### `service_ensure`

Tells Puppet whether the BackupPC service should be running. Valid options: 'running' or 'stopped'. Default value: 'running'

##### `service_manage`

Tells Puppet whether to manage the BackupPC service. Valid options: 'true' or 'false'. Default value: 'true'

##### `service_name`

Tells Puppet what BackupPC service to manage. Valid options: string. Default value: 'backuppc'

## Limitations

Debian family OSes are officially supported. Tested and built on Debian.

##Development

[Echoes Technologies](https://www.echoes-tech.com) modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great.

[Fork this module on GitHub](https://github.com/echoes-tech/puppet-backuppc/fork)

## Contributors

The list of contributors can be found at: https://github.com/echoes-tech/puppet-backuppc/graphs/contributors
