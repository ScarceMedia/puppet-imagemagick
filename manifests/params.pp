class imagemagick::params {
  case $::osfamily {
    'RedHat': {
      $packages = ['ImageMagick']
    }
    'Debian': {
      $packages = ['imagemagick']
    }
    default: {
      fail("${::osfamily} is not supported")
    }
  }
}
