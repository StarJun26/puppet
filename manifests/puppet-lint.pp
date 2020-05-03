package { 'ruby':
ensure => installed,
}

package { 'puppet-lint':
ensure   => absent,
provider => gem,
}
