class ejabberd::params {
  
  case $operatingsystem {
    /^(Redhat|CentOS|Fedora|Debian|Ubuntu)$/: {
      $ejabberd_package = 'ejabberd'
    }
    Solaris: {
      $ssh_package = 'ejabberd'
    }
    default: {
    }
  }

  $ejabberd_service_config = '/etc/ejabberd/ejabberd.cfg'
  $ejabberd_service = 'ejabberd'
  
}
