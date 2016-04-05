node 'development.example.com' {

  include apache

  apache::vhost { $::fqdn:
    port    => '80',
    docroot => '/var/www/test',
  }
 
  file { '/var/www':
    ensure => directory,
  }->
  file {'/var/www/test':
    ensure => directory,
  }->
  file { '/var/www/test/index.html':
    ensure  => file,
    content => 'Hello World',
  }

}
