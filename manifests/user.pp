node "mynode.ec2.internal" {

	group { 'devs':
	ensure => present,
	provider => groupadd,
	gid => 3000
	}

	user { 'rolland':
	ensure => present,
	uid => '3001',
	home => '/home/rolland',
	shell => '/bin/bash',
	provider => useradd,
	groups => ['devs'],
	}
}
