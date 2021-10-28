#
class mail::postfix {

    include mail::config, mail::service, mail::install
}

