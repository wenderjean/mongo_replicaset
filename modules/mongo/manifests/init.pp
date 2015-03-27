class mongo($bind_ip) {

  package { 'mongodb':
    ensure => present
  }

  package { 'mongodb-server':
    ensure  => present,
    require => Package['mongodb']
  }

  service { 'mongodb':
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart => true,
    require     => Package['mongodb']
  }

  file { '/etc/mongodb.conf':
    owner   => root,
    mode    => 0644,
    content => template("mongo/mongodb.conf"),
    require => Package['mongodb'],
    notify  => Service['mongodb']
  }
}

