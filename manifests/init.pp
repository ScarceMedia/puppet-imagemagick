# == Class: imagemagick
#
class imagemagick inherits imagemagick::params {
  include imagemagick::install
  include imagemagick::config

  Class['imagemagick::install'] -> Class['imagemagick::config']
}
