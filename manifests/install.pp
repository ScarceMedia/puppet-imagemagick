# == Class: imagemagick::install
#
class imagemagick::install {
  package {$::imagemagick::params::packages:
    ensure => latest,
  }
}
