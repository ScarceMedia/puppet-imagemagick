# == Class: imagemagick::config
#
class imagemagick::config {
  if defined(Class['php::fpm']) {
    file { '/etc/ImageMagick/policy.xml':
      ensure => file,
      mode   => '0644',
      source => 'puppet:///modules/imagemagick/etc/ImageMagick/policy.xml'
    }
  }

  if defined(Class['apache2']) {
    file { '/etc/ImageMagick/policy.xml':
      ensure => file,
      mode   => '0644',
      source => 'puppet:///modules/imagemagick/etc/ImageMagick/policy.xml'
    }
  }
}
