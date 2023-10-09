# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include cicd_lab
class cicd_lab {
  file { '/tmp':
    ensure => directory,
  }
  package { 'mmc':
    ensure => installed,
  }
  user { 'brian':
    ensure => present,
  }
}
