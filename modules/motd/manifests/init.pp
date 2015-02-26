# Class: motd
#
# This module manages the /etc/motd file using a template
#
# == Actions
#
# == Parameters
#
# == Requires
#
# == Sample Usage
#  class { 'motd':; }
#
# == Notes
#
# [Remember: No empty lines between comments and class definition]
#
# == Authors
#
# Ronny Roethof <ronny@roethof.net>
#
class motd (
  $puppetmaster                  = hiera('puppetmaster')
) {

  $motd_group = $operatingsystem ? {
    solaris => 'sys',
    default => '0',
  }

  file { '/etc/motd':
    ensure  => file,
    content => template('motd/motd.erb'),
    owner   => '0',
    group   => $motd_group,
    mode    => '0644',
  }
}

