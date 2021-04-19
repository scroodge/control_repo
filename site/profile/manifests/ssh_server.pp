class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC280/a02fuy3Ac6I98amZTNHk+MCOjsaf6Z/cdVVPbYXwDGscs79SFovaXlG+Wg6bQ97gWkWN6hRAw8wLYtxMFVyESLP/ehByS/3N1uulRP8hnQjDP55dkMrsLIIkf+LzXgot6mNWcFeyleyX+uhIVUaT29TUlD0LrBKlWtFmEk+fhaGiuiCenULP03BZq8FsFsWBZRxeDhaYdmA1WwBee7F+dtnHCs38mNx0jCc0+GtfKQVEjrTNGNSikpQnElwM8wz+TBZ0NfsEkX++KZaxTrlycXiUrb1I5ut5iT+hJJwNbiJE8JawHLL6SJD43ug/IkxVMgxxHA67JK3R3Kgdj root@master.puppet.vm',
  }  
}
