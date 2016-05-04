# == Class: imagemagick::install
#
class imagemagick::install {
  if defined(Class['php::fpm']) {
    package {$::imagemagick::params::packages:
      ensure => latest,
      notify => service['php5-fpm']
    }
  }

  if defined(Class['apache2']) {
    package {$::imagemagick::params::packages:
      ensure => latest,
      notify => service['apache2']
    }
  }

}
