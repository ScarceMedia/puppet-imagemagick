class imagemagick::params {
  case $::osfamily {
    'RedHat': {
      $packages = ['ImageMagick']
    }
    'debian': {
      $packages = ['imagemagick']
    }
    default: {
      fail("${::osfamily} is not supported")
    }
  }
}
