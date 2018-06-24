class ssh::params {
  case $facts['networking']['ip'] {
    '192.168.67.128': {
      $p_name = 'openssh-server'
      $s_name = 'sshd'
    }
    '192.168.67.129': {
      $p_name = 'audit'
      $s_name = 'auditd'
    }
    '192.168.67.132': {
      $p_name = 'ntp'
      $s_name = 'ntpd'
    }
    default: {
      fail("${facts['networking']['ip']} is not supported MAN")
    }
  }
}

  

