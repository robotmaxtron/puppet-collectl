class collectl (
    $daemon_cmds = $::collectl::defaults::daemon_cmds,
    $service_status = 'running',
) inherits collectl::defaults {

    package {'collectl':
        ensure => installed,
    }

    file {'/etc/collectl.conf':
        content => template('collectl/collectl.conf.erb'),
        require => Package['collectl'],
    }

    #service {'collectl':
    #    ensure  => $service_status,
    #    require => File['/etc/collectl.conf'],
    #}
}
