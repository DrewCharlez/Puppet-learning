# Manage nginx webserver
class nginx {
 package { 'nginx':
   ensure => present,
 }

 service { 'nginx':
   ensure => running,
   require => Package['nginx'],
 }

 file { '/var/www/cat-pictures':
   ensure => directory,
   owner  => 'root',
   group  => 'root',
   mode   => '0774',
 }

 file { '/var/www/cat-pictures/index.html':
 content => "I can haz cat pictures\n",

 }

  file { '/home/vagrant/puppet/modules/nginx/files':
   ensure => directory,
   owner  => 'vagrant',
   group  => 'vagrant',
   mode   => '0774',
 }

  file { '/etc/nginx/sites-enabled/default':
   ensure => absent,
 }
}
