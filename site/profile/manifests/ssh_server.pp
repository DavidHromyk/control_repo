class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@localhost.localdomain':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCY7z1MQZMr4pRmEfcLn7pcTP5F7IeWs+9Av3xUWf1Cjlk0YVEjmBJuXFnSMGiUn0rlNwgQEDvhk9KrKE0+NXLgtN0rWSHYlKC83IRzt/Ki9Ucg3QqV+396rqaTisv7qIhotc0VB45z0SKEv+CWr+tHhvs+4XzN6POElv3myA1GrH31iKQhCOdeOZW/6plrt50OET41M/mIyJ0L+DkSsS79OP7p7ejANJHPw3vQFAGGz3+Ii1ZhRjqGUwhPfcOZNzawqwZF99yJNUvCeXx9fpZlrlaX6oqoa6EbCnaHCnpktB2nAV3BaW6MCHhN60C+FLXsOt69dFEElN2pDKoHgP9D',
        }
}
