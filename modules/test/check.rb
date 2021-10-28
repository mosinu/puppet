#!/usr/bin/ruby
#
#
check = "/mnt/dump.mounted"
result = system('ls -l /mnt/*.gz > /dev/null 2>&1')
exit_status = $?.exitstatus

# puts "---------"
# puts result
# puts "---------"

# puts "---------"
# puts check
# puts "---------"


# puts "---------"
# puts exit_status
# puts "---------"

if exit_status == 2
    p("okay to mount")
else
    p("already mounted")
end

