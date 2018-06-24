class ssh::install(
  $package_name = $ssh::p_name,
)
{
  package { 'mul-package':
    name	=> $package_name,
    ensure	=> absent,
  }
} 
