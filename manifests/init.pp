# Class: git
# install git-subtree
#

class downloadfile ()
{
  package {"wget":
    ensure => "present",
  }

  file { "/usr/bin/md5dl":
    owner => root,
    group => root,
    mode => '0777',
    source => "puppet:///modules/downloadfile/md5dl",
  }

  define and_md5check ($url,$dest,$md5sum,$user,$group,$chmod)
  {
    exec {
      $name:
      command => "/usr/bin/md5dl ${url} ${dest} ${md5sum} ${user} ${group} ${chmod}",
      cwd     => "/tmp",
      creates => "$dest",
      require => [Package["wget"],File["/usr/bin/md5dl"]]
    }
  } 
}
