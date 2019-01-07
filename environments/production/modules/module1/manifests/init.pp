class module1 {

    package { 'mariadb-server':
        ensure => installed,
    }

    service { 'mariadb':
        ensure => running,
        enable => true,
#       subscribe => File['/etc/my.cnf.d/server.cnf'],
    }

#    file { '/etc/my.cnf.d/server.cnf':
 #       ensure => file,
  #      mode   => 644,
   #     source => '/vagrant/conf/server.cnf',
    #}

}
