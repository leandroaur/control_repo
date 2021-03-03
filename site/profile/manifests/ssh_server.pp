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
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVXmyWkgRlWqIl+2iVvQM7m9y4qi5AQZP4wNhb8TErR+ScEncV4Aa53URcsvLcHHTUcdJzdPN2OV1NgVcoPUApNPsBG1eB/GEci0EjPyvOmxUT6rQju1YVsdJeFfnNY0mpLTWlcITMNbZm/C0zi7M9XLdUUIqzvE5eTqiAlXFKNvDvdqtZv8YyMsHUwZALMNX2vD2/GJIEs0BxmlIYoFqonxU80HC6KJZ/yhF4XVhI9rRwbQkJ8AKxQdbCqsHMwjt4qqWff9YdjxqFnpB5sG5xIJGX58ALmdUumXxaK0DMPv4QOgt2Nlkx87E7F43DRKiZImiMrA5XAFSGk1cFKyRT',
        }
}
