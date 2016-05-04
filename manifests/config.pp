# == Class: imagemagick::config
#
class imagemagick::config {
  file { '/etc/ImageMagick/policy.xml':
    ensure => file,
    mode   => '0644',
    source => 'puppet:///modules/imagemagick/etc/ImageMagick/policy.xml',
  }
}
