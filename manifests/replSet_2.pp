class { 'apt':
  always_apt_update => true
}

Class['apt'] -> Package <| |>

class { "mongo":
  bind_ip => '127.0.0.1,192.168.33.11'
}
