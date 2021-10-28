# init.pp
#
class a2ps {
  include a2ps::config
  include a2ps::install
}
