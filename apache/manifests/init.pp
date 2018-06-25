class apache {
  
  package { 'apache':
    name   => $apachename,
    ensure => present,
  }
}
