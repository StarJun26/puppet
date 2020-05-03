node "mynode.ec2.internal" {

	group { 'devs':
	ensure => present,
	gid => 3000,
	}

	user { 'rolland':
	ensure => present,
	shell => '/bin/bash',
	home => '/home/rolland',
	uid => '3001',
	managehome => true,
	groups => ['devs'],
	}
}
