class create-user{
	file {'/home/rolland':
	ensure => directory,
	owner => 'rolland',
	group => 'devs',
	mode => '700',
	require =>[User['rolland'], Group['devs']],
	}

	group { 'devs':
	ensure => present,
	gid => 3000,
	}

	user { 'rolland':
	ensure => present,
	shell => '/bin/bash',
	home => '/home/rolland/',
	uid => '3002',
	managehome => true,
	groups => ['devs'],
	}
}
