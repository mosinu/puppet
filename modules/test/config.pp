class autofs::config {

  File {
     owner => "root",
     group => "root",
     mode => "0644",
  }

  file { "/tmp/hello":
       ensure  => present,
       content => template("test/hello.erb"),
       require => Class["autofs::install"],
       notify  => Class["autofs::service"],
       backup  => ".orig",
  }

}

