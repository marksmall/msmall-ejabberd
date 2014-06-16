class ejabberd::config {
  
  file { $ejabberd::params::ejabberd_service_config:
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    source  => "puppet:///modules/ejabberd/ejabberd.cfg",
    require => Class[ 'ejabberd::install' ],
    notify  => Class[ 'ejabberd::service' ],
  }
  
}
