class sudoer::mysql {

    augeas { "sudoer_mysql_cmdalias":
        context => "/files/etc/sudoers",
        changes => [
            "set Cmnd_Alias[alias/name = 'STRACE_CMDS']/alias/name STRACE_CMDS",
            "set Cmnd_Alias[alias/name = 'STRACE_CMDS']/alias/command[1] '/sbin/service mysqld *'",
            "set Cmnd_Alias[alias/name = 'STRACE_CMDS']/alias/command[2] '/etc/rc.d/init.d/mysqld *'",
        ],
    }

    augeas { "sudoer_mysql":
        context => "/files/etc/sudoers",
        changes => [
            "set spec[user = '%mysql']/user %mysql",
            "set spec[user = '%mysql']/host_group/host ALL",
            "set spec[user = '%mysql']/host_group/command/runas_user root",
            "set spec[user = '%mysql']/host_group/command/tag NOPASSWD",
            "set spec[user = '%mysql']/host_group/command STRACE_CMDS", 
        ],
    }

}
