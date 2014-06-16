class ejabberd::config {
  
  file { $ejabberd::params::ejabberd_service_config:
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    content => template('ejabberd/ejabberd.cfg.erb'),
    require => Class[ 'ejabberd::install' ],
    notify  => Class[ 'ejabberd::service' ],
  }
  
}
