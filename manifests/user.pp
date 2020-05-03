group { 'devs':
ensure => present,
gid => 3000,
}

user { 'rolland':
ensure => present,
uid => '3001',
home => '/home/rolland',
shell => '/bin/bash',
groups => ['devs'],
}
