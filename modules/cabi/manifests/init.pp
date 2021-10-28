#
class cabi {
  include xgui::install 
  include sudoer::cabiadm 
  include users::cabi
  include cabi::install
}

