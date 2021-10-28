# init.pp
#
class mksysb {
  include mksysb::config
  include mksysb::files
  include mksysb::install
}
