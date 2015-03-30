class { 'apt':
  always_apt_update => true
}

Class['apt'] -> Package <| |>

class { "mongo":
  bind_ip  => '127.0.0.1,192.168.33.21',
  hostname => 'mongo1.replica',
  hosts    => [
    "192.168.33.20    mongo0.replica",
    "192.168.33.21    mongo1.replica",
    "192.168.33.22    mongo2.replica"
  ]
}
