class ssh::service(
  $service_name = $ssh::s_name,
) {
  service { 'mul-service':
  ensure	=> running,
  name		=> $service_name,
  enable	=> true,
  hasstatus	=> true,
  hasrestart	=> true,
  }
}
