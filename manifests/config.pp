# == Class: imagemagick::config
#
class imagemagick::config {
  if defined(Service['php5-fpm']) {
    file { '/etc/ImageMagick/policy.xml':
      ensure => file,
      mode   => '0644',
      source => 'puppet:///modules/imagemagick/etc/ImageMagick/policy.xml',
      notify => service['php5-fpm'],
    }
  }

  if defined(Service['apache2']) {
    file { '/etc/ImageMagick/policy.xml':
      ensure => file,
      mode   => '0644',
      source => 'puppet:///modules/imagemagick/etc/ImageMagick/policy.xml'
      notify => service['apache2'],
    }
  }
}
