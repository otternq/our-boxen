class people::otternq {
  include mongodb

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => "${::boxen_user}/dotfiles",
    require => File[$my]
  }
}
