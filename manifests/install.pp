class ejabberd::install {
    
    package { $ejabberd::params::ejabber_package:
      ensure => 'installed',
    }
    
}
