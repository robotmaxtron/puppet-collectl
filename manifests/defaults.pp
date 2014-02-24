class collectl::defaults {
    $daemon_cmds = '-f /var/log/collectl -r00:00,7 -m -F60 -s+YZ'
}
