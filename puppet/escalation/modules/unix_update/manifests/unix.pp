class unix_update::unix{
  case $operatingsystem {
    'Debian': {
      exec { 'update':
        command => "/usr/bin/apt-get update --fix-missing"
      }
    }
    'Ubuntu': {
      exec { 'update':
        command => "/usr/bin/apt-get update --fix-missing"
      }
    }
    'RedHat': {
      exec { 'update':
        command => "yum update"
      }
    }
    'CentOS': {
      exec { 'update':
        command => "su -c 'yum update'"
      }
    }
    'Solaris': {
      exec { 'update':
        command => "pkg update"
      }
    }
  }
}