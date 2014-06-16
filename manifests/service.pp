class ejabberd::service {

  service { $ejabberd::params::ejabberd_service:
    ensure     => 'running',
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class[ 'ejabberd::config' ],
  }

}
