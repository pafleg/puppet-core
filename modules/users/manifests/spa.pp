class users::spa (
  $ram = "8192",
  $hugeperc = 52,
  $hugepagenr = $ram*$hugeperc/100/2,
){
  # group { 'spa':
  #   ensure => 'present',
  #   gid    => 1000,
  # } ->

  # user { 'spa':
  #   ensure             => 'present',
  #   comment            => "2 Selin Pavel ${hugepagenr}",
  #   gid                => 1000,
  #   groups             => ['wheel', 'spa'],
  #   home               => '/home/spa',
  #   password           => '$6$BQKm442WHVUl1nlY$zs7oIS/NmYB3rbxcsTI7TmSBWyvRgpgPyfmbnhazfxV/CI32q0DIaRmUtIOG9Kh5eNsSDgLKFxXca9taDNYh61',
  #   password_max_age   => 99999,
  #   password_min_age   => 0,
  #   password_warn_days => 7,
  #   shell              => '/bin/bash',
  #   uid                => 1000,
  # }
  notify {"Hugeperc var: ${hugeperc}":}
}
