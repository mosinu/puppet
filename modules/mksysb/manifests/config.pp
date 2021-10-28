# config.pp
#
class mksysb::config{

  mount { "/mnt":
          device  => "nerf:/export/mksysb/dump",
          fstype  => "nfs",
          ensure  => "mounted",
          options => "defaults",
          atboot  => "false",
  }
}
