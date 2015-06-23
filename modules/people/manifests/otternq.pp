class people::otternq {
  # include mongodb
  include iterm2::dev
  include redis
  include zsh
  include ohmyzsh

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
